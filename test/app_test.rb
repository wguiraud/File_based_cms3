# frozen_string_literal: true

# app_test.rb
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
    assert_includes last_response.body, 'about.txt'
    assert_includes last_response.body, 'changes.txt'
    assert_includes last_response.body, 'history.txt'
  end

  def test_viewing_text_document
    get '/changes.txt'
    assert_equal 200, last_response.status
    assert_equal 'text/plain', last_response['Content-Type']
    assert_includes last_response.body, 'hello from changes.txt'
  end

  def test_document_not_found
    get '/unknown.ext'

    assert_equal 302, last_response.status

    get ''
    assert_equal 200, last_response.status
    assert_includes last_response.body, 'does not exist'

    get '/'
    refute_includes last_response.body, 'does not exist'
  end
end
