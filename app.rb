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

def root
  File.expand_path(__dir__)
end

def file_paths
  Dir.glob("#{root}/files/*")
end

def files_names
  file_paths.map { |file| File.basename(file) }
end

def valid_file?(file_name)
  files_names.include?(file_name)
end

def file_extension(file_name)
  File.extname(file_name)
end

def set_plain_text_response_header
  response.headers['Content-Type'] = 'text/plain'
end

def set_html_response_header
  response.headers['Content-Type'] = 'text/html'
end

def set_response_header(file_name)
  if file_extension(file_name) == '.txt'
    set_plain_text_response_header
  elsif file_extension(file_name) == '.md'
    set_html_response_header
  end
end

def read_text_file(file_name)
  File.read("./files/#{file_name}")
end

def read_markdown_file(file_name)
  markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
  markdown.render(File.read("./files/#{file_name}"))
end

def read_file(file_name)
  if file_extension(file_name) == '.txt'
    read_text_file(file_name)
  elsif file_extension(file_name) == '.md'
    read_markdown_file(file_name)
  end
end

get '/' do
  files = files_names
  erb :index, locals: { files: files }
end

get '/:file_name' do
  if valid_file?(params[:file_name])
    set_response_header(params[:file_name])
    read_file(params[:file_name])
  else
    session[:error] = "#{params[:file_name]} does not exist"
    redirect '/'
  end
end
