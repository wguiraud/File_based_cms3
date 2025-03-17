# frozen_string_literal: true

# app_test.rb
ENV['RACK_ENV'] = 'test'

require 'minitest/autorun'
require 'rack/test'
require 'pry'
require 'fileutils'

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

  def test_index
    create_document('about.txt', 'about.txt')

    get '/'
    assert_equal 200, last_response.status
    assert_equal 'text/html;charset=utf-8', last_response['Content-Type']
    assert_includes last_response.body, 'New Document'
    assert_includes last_response.body, 'about.txt'
  end

  def test_viewing_text_document
    create_document('changes.txt', 'new content')

    get '/changes.txt'
    assert_equal 200, last_response.status
    assert_equal 'text/plain', last_response['Content-Type']
    assert_includes last_response.body, 'new content'
  end

  def test_viewing_md_document
    create_document('titles.md', 'markdown title test env')

    get '/titles.md'
    assert_equal 200, last_response.status
    assert_equal 'text/html', last_response['Content-Type']
    assert_includes last_response.body, 'markdown'
    assert_includes last_response.body, 'title'
    assert_includes last_response.body, 'test env'
  end

  def test_document_not_found
    get '/unknown.ext'
    assert_equal 302, last_response.status

    get last_response['Location']
    assert_equal 200, last_response.status
    assert_includes last_response.body, 'does not exist'

    get '/'
    refute_includes last_response.body, 'does not exist'
  end

  def test_editing_document
    create_document('changes.txt')

    get '/changes.txt/edit'

    assert_equal 200, last_response.status
    assert_includes last_response.body, '<textarea'
    assert_includes last_response.body, '<button type="submit"'
  end

  def test_updating_document
    create_document('changes.txt')

    post '/changes.txt', file_content: 'new content'

    assert_equal 302, last_response.status

    get last_response['Location']

    assert_includes last_response.body, 'The changes.txt file has been updated'

    get '/changes.txt'
    assert_includes last_response.body, 'new content'
  end
end
