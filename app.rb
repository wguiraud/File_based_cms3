# frozen_string_literal: true

require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry' if development?
require 'sinatra/content_for'
require 'erubi'

get '/' do
  root = File.expand_path("..", __FILE__)

  files_paths = Dir.glob("#{root}/files/*")
  files = files_paths.map { |file| File.basename(file) }

  erb :index, locals: { files: files }
end

get '/:file_name' do
  file_content = File.read("./files/#{params[:file_name]}")

  response.headers['Content-Type'] = 'plain/text'

  erb :file_content, locals: { file_content: file_content }
end
