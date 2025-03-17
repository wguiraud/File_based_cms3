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

get '/' do
  files = files_names
  erb :index, locals: { files: files }
end

get '/:file_name' do
  pattern = File.join(data_path, params[:file_name])
  if File.exist?(pattern)
    configure_response_header(params[:file_name])
    read_file(params[:file_name])
  else
    session[:message] = "The #{params[:file_name]} file does not exist"
    redirect '/'
  end
end

get '/:file_name/edit' do
  file_name = params[:file_name]
  file_content = read_file(file_name)
  erb :edit, locals: { file_name: file_name, file_content: file_content }
end

post '/:file_name' do
  file_name = params[:file_name]
  new_file_content = params[:file_content]

  pattern = File.join(data_path, file_name)
  File.write(pattern, new_file_content)

  session[:message] = "The #{file_name} file has been updated"
  redirect '/'
end
