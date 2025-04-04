# frozen_string_literal: true

# app_test.rb
ENV['RACK_ENV'] = 'test'

require 'minitest/autorun'
require 'rack/test'
require 'pry'
require 'fileutils'
require 'bcrypt'
require 'yaml'

require_relative '../app'

class AppTest < Minitest::Test
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def setup
    FileUtils.mkdir_p(data_path)
  end

  def teardown
    FileUtils.rm_rf(data_path)
  end

  def create_document(name, content = '')
    File.open(File.join(data_path, name), 'w') do |f|
      f.write(content)
    end
  end

  def copy_yaml_file
    FileUtils.cp('./users_credentials.yaml', './test/data/users_credentials.yaml')
  end

  def session
    last_request.env['rack.session']
  end

  def admin_session
    { 'rack.session' => { username: 'admin' } }
  end

  def test_index
    create_document('about.txt', 'about.txt')

    get '/'

    assert_equal 200, last_response.status
    assert_equal 'text/html;charset=utf-8', last_response['Content-Type']
    assert_includes last_response.body, 'New Document'
    assert_includes last_response.body, 'Edit'
    assert_includes last_response.body, 'Sign in'
  end

  def test_viewing_text_document
    create_document('changes.txt', 'new content')

    get '/changes.txt'

    assert_equal 200, last_response.status
    assert_equal 'text/plain', last_response['Content-Type']
    assert_includes last_response.body, 'new content'
  end

  def test_document_not_found
    get '/unknown.ext'

    assert_equal 302, last_response.status
    assert_equal 'The unknown.ext file does not exist',
                 session[:message]
  end

  def test_editing_document_as_signed_in_user
    create_document('titles.txt')

    get '/titles.txt/edit', {}, admin_session

    assert_equal 200, last_response.status
    assert_includes last_response.body, '<textarea'
    assert_includes last_response.body, '<button type="submit"'
  end

  def test_editing_document_as_a_non_signed_in_admin
    create_document('titles.txt', 'new content')

    get 'titles.txt/edit'

    assert_equal 'You must be signed in to do that.', session[:message]
    assert_equal 302, last_response.status
  end

  def test_updating_document_as_signed_in_user
    post '/titles.txt', { file_content: 'new content' }, admin_session

    assert_equal 302, last_response.status
    assert_equal 'The titles.txt file has been updated', session[:message]

    get '/titles.txt'
    assert_equal 200, last_response.status
    assert_includes last_response.body, 'new content'
  end

  def test_updating_document_as_non_signed_in_user
    post '/titles.txt', { file_content: 'new content' }

    assert_equal 302, last_response.status
    assert_equal 'You must be signed in to do that.', session[:message]

    get last_response['Location']
    assert_equal 200, last_response.status
    assert_includes last_response.body, 'Sign in'
  end

  def test_new_document_template_as_signed_in_user
    get '/new_document', {}, admin_session

    assert_equal 200, last_response.status
    assert_includes last_response.body, 'Add a new document'
    assert_includes last_response.body, '<input type="submit" value="Create Document"'
  end

  def test_new_document_template_as_non_signed_in_user
    get '/new_document'

    assert_equal 'You must be signed in to do that.', session[:message]
    assert_equal 302, last_response.status

    get last_response['Location']
    assert_equal 200, last_response.status
  end

  def test_new_document_submission_with_invalid_document_name_as_signed_in_user
    post '/add_new_document', { new_document_name: 'history/txt' }, admin_session

    assert_equal 422, last_response.status
    assert_includes last_response.body, 'name must contain an extention'
  end

  def test_new_document_submission_with_non_unique_document_name_as_signed_in_user
    create_document('history.txt')

    post '/add_new_document', { new_document_name: 'history.txt' },
         admin_session

    assert_equal 422, last_response.status
    assert_includes last_response.body, 'The document name must be unique'
  end

  def test_new_document_submission_with_valid_document_name_as_signed_in_user
    post '/add_new_document', { new_document_name: 'history.txt' }, admin_session

    assert_equal 302, last_response.status
    assert_equal 'The new document history.txt has been created.',
                 session[:message]

    get last_response['Location']
    assert_equal 200, last_response.status
  end

  def test_new_document_submission_as_a_non_signed_in_user
    post '/add_new_document'

    assert_equal 'You must be signed in to do that.', session[:message]
    assert_equal 302, last_response.status

    get last_response['Location']
    assert_equal 200, last_response.status
  end

  def test_delete_document_with_standard_request_as_a_non_signed_in_user
    post '/helloworld.txt/delete'

    assert_equal 302, last_response.status
    assert_equal 'You must be signed in to do that.', session[:message]
  end

  def test_delete_document_with_standard_request_as_a_signed_in_user
    create_document('history.txt', 'new content')
    post 'history.txt/delete', {}, admin_session

    assert_equal 302, last_response.status
    assert_equal 'The history.txt file has been deleted.',
                 session[:message]

    get last_response['Location']
    assert_equal 200, last_response.status
  end

  def test_signin_page
    get '/users/signin'

    assert_equal 200, last_response.status
    assert_includes last_response.body, 'Username'
    assert_includes last_response.body, 'Password'
    assert_includes last_response.body, 'Sign In'
  end

  def test_signingin_with_valid_credentials
    copy_yaml_file
    user_name = 'bumblebee'
    pass_word = 'pollen'

    post '/users/signin', username: user_name, password: pass_word

    assert_equal 302, last_response.status
    assert_equal user_name, session[:username]
    assert_equal 'Welcome', session[:message]

    get '/'
    assert_equal 200, last_response.status
  end

  def test_signingin_with_invalid_credentials
    copy_yaml_file

    post '/users/signin', username: 'hello', password: 'world'

    assert_equal 422, last_response.status
    assert_nil session[:username]
    assert_includes last_response.body, 'invalid credentials'
  end

  def test_signingout
    get '/', {}, admin_session
    assert_includes last_response.body, 'Signed in as: admin'

    post '/users/signout'
    assert_equal 'You have been signed out.', session[:message]

    get last_response['Location']
    assert_nil session[:username]
  end

  def test_editing_document_as_admin_user
    create_document('changes.txt', 'new content')

    get '/changes.txt/edit', {}, admin_session
    assert_equal 200, last_response.status
    assert_includes last_response.body, '<textarea'
    assert_includes last_response.body, '<button type="submit"'
  end

  def test_editing_as_non_admin_user
    create_document('changes.txt', 'new content')

    get '/changes.txt/edit'
    assert_equal 302, last_response.status

    get last_response['Location']
    assert_nil session[:username]

    assert_equal 200, last_response.status
    assert_includes last_response.body, 'You must be signed in to do that'
  end

  def test_invalid_credentials
    copy_yaml_file
    given_password = 'secret'
    given_username = 'admin'

    assert_equal false, valid_credentials?(given_username, given_password)
  end

  def test_valid_credentials
    copy_yaml_file
    given_password = 'salad'
    given_username = 'tutulu'

    assert_equal true, valid_credentials?(given_username, given_password)

    given_password = 'pollen'
    given_username = 'bumblebee'

    assert_equal true, valid_credentials?(given_username, given_password)
  end

  def test_index_page_contains_signup_link
    get '/'

    assert_includes last_response.body, '<a href="/users/signin">Sign in</a>'
  end

  def test_view_signup_form
    get '/signup'

    assert_equal 200, last_response.status
    assert_includes last_response.body, '<label for="username">Enter a Username</label>'
    assert_includes last_response.body, '<label for="password">Enter a Password</label>'
    assert_includes last_response.body, 'for="confirm_password">Confirm Password'
    assert_includes last_response.body, '<button type="submit">Submit</button>'
  end

  def test_signup_with_empty_user_name
    username = ''
    password = '@@trees'
    confirm_password = '@@trees'

    post '/users/signup', username: username, password: password, confirm_password: confirm_password
    assert_equal 422, last_response.status
    assert_includes last_response.body, '<p>the username cannot be empty</p>'
  end

  def test_signup_with_empty_password
    username = 'beaver'
    password = ''
    confirm_password = ''

    post '/users/signup', username: username, password: password, confirm_password: confirm_password
    assert_equal 422, last_response.status
    assert_includes last_response.body, '<p>the password cannot be empty</p>'
  end

  def test_signup_with_password_not_matching_confirmation
    username = 'beaver'
    password = '@@trees'
    confirm_password = 'tree'

    post '/users/signup', username: username, password: password, confirm_password: confirm_password
    assert_equal 422, last_response.status
    assert_includes last_response.body, "<p>the passwords don't match</p>"
  end

  def test_signup_with_existing_user
    copy_yaml_file
    username = 'bumblebee'
    password = 'pollen'
    confirm_password = 'pollen'

    post '/users/signup', username: username, password: password, confirm_password: confirm_password
    assert_equal 422, last_response.status
    assert_includes last_response.body, '<p>the username already exists</p>'
  end

  def test_siginup_with_valid_credentials
    copy_yaml_file

    username = 'beaver2'
    password = '@@@trees2'
    confirm_password = '@@@trees2'

    post '/users/signup', username: username, password: password, confirm_password: confirm_password

    assert_equal 302, last_response.status
    assert_equal 'beaver2', session[:username]
    assert_equal 'Welcome, account has been created', session[:message]

    get '/'
    assert_equal 200, last_response.status
  end
end
