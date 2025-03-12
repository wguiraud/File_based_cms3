# frozen_string_literal: true

ENV['RACK_ENV'] = 'test'

require 'minitest/autorun'
require 'rack/test'
require 'pry'

require_relative '../app'

class AppTest < Minitest::Test
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_index
    get '/'
    assert_equal 200, last_response.status
    assert_equal 'text/html;charset=utf-8', last_response['Content-Type']
    # assert_includes("", last_response.body)
  end

  #  def setup
  #    @file_content = File.read("./files/about.txt")
  #  end
  #
  #  def test_file_content
  #    get "/about.txt"
  #    assert_equal 200, last_response.status
  #    assert_equal "text/plain", last_response["Content-Type"]
  #    #assert_equal "Hello from about.txt", last_response.body
  #  end
end
