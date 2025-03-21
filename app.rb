# frozen_string_literal: true

# app.rb

require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry' if development?
require 'sinatra/content_for'
require 'erubi'
require 'redcarpet'

configure do
  require_relative 'config/environments/test' if test?
  enable :sessions
  set :session_secret, ENV['SESSION_SECRET']
end

def data_path
  if ENV['RACK_ENV'] == 'test'
    File.expand_path('test/data', __dir__)
  else
    File.expand_path('data', __dir__)
  end
end

def file_paths
  pattern = File.join(data_path, '*')
  Dir.glob(pattern)
end

def files_names
  file_paths.map { |f| File.basename(f) }
end

def file_extension(file_name)
  File.extname(file_name)
end

def configure_plain_text_response_header
  response.headers['Content-Type'] = 'text/plain'
end

def configure_html_response_header
  response.headers['Content-Type'] = 'text/html'
end

def configure_response_header(file_name)
  if file_extension(file_name) == '.txt'
    configure_plain_text_response_header
  elsif file_extension(file_name) == '.md'
    configure_html_response_header
  end
end

def read_text_file(file_name)
  pattern = File.join(data_path, file_name)
  File.read(pattern)
end

def read_markdown_file(file_name)
  pattern = File.join(data_path, file_name)
  markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
  markdown.render(File.read(pattern))
end

def read_file(file_name)
  if file_extension(file_name) == '.md'
    read_markdown_file(file_name)
  elsif file_extension(file_name) == '.txt'
    read_text_file(file_name)
  end
end

def used_document_name?(document_name)
  files_names.any? { |file_name| file_name == document_name }
end

def invalid_character?(document_name)
  valid_characters = /^[a-zA-Z]+\.[a-zA-Z]{2,3}$/
  !document_name.match?(valid_characters)
end

def invalid_length?(document_name)
  !(1..100).include?(document_name.size)
end

def remove_white_spaces(document_name)
  document_name.strip
end

def error_for_document_name(document_name)
  if used_document_name?(document_name)
    'The document name must be unique'
  elsif invalid_character?(document_name)
    'The document name must contain an extention'
  elsif invalid_length?(document_name)
    'The document name must be between 1 and 100 characters'
  end
end

def create_document(name, content = '')
  File.open(File.join(data_path, name), 'w') do |f|
    f.write(content)
  end
end

def valid_credentials?(username, password)
  username == 'admin' && password == 'secret'
end

def user_signed_in?
  session.key?(:username)
end

def require_user_signed_in
  unless user_signed_in?
    session[:message] = 'You must be signed in to do that.'
    redirect '/'
  end
end

get '/' do
  files = files_names
  erb :index, locals: { files: files }
end

get '/new_document' do
  require_user_signed_in
  erb :new_document
end

post '/add_new_document' do
  require_user_signed_in

  document_name = remove_white_spaces(params[:new_document_name])

  error = error_for_document_name(document_name)
  if error
    status 422
    session[:error] = error
    erb :new_document
  else
    session[:message] = "The new document #{document_name} has been created."
    create_document(document_name)
    redirect '/'
  end
end

get '/:file_name' do
  path = File.join(data_path, params[:file_name])
  if File.exist?(path)
    configure_response_header(params[:file_name])
    read_file(params[:file_name])
  else
    session[:message] = "The #{params[:file_name]} file does not exist"
    redirect '/'
  end
end

get '/:file_name/edit' do
  require_user_signed_in
  file_name = params[:file_name]
  file_content = read_file(file_name)
  erb :edit, locals: { file_name: file_name, file_content: file_content }
end

post '/users/signout' do
  session.delete(:username)
  session[:message] = 'You have been signed out.'
  redirect '/'
end

post '/:file_name' do
  require_user_signed_in

  file_name = params[:file_name]
  new_file_content = params[:file_content]

  path = File.join(data_path, file_name)
  File.write(path, new_file_content)

  session[:message] = "The #{file_name} file has been updated"
  redirect '/'
end

post '/:file_name/delete' do
  require_user_signed_in

  file_name = params[:file_name]
  path = File.join(data_path, file_name)

  File.delete(path)

  if env['HTTP_X_REQUESTED_WITH'] == 'XMLHttpRequest'
    status 204
  else
    session[:message] = "The #{file_name} file has been deleted."
    redirect '/'
  end
end

post '/users/signin' do
  username = params[:username]
  password = params[:password]

  if valid_credentials?(username, password)
    session[:message] = 'Welcome'
    session[:username] = username
    redirect '/'
  else
    session[:error] = 'invalid credentials'
    status 422
    erb :signin
  end
end

get '/users/signin' do
  erb :signin
end
