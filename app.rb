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

def known_file?(file_name)
  files_names.include?(file_name)
end

def read_file(file_name)
  File.read("./files/#{file_name}")
end

get '/' do
  files = files_names
  erb :index, locals: { files: files }
end

get '/:file_name' do
  if known_file?(params[:file_name])
    response.headers['Content-Type'] = 'text/plain'
    read_file(params[:file_name])
  else
    session[:error] = "#{params[:file_name]} does not exist"
    redirect '/'
  end
end
