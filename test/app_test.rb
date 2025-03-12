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
    assert_includes(last_response.body, 'about.txt')
    assert_includes(last_response.body, 'changes.txt')
    assert_includes(last_response.body, 'history.txt')
  end

  def test_about_txt_content
    get '/about.txt'
    assert_equal 200, last_response.status
    assert_equal 'plain/text', last_response['Content-Type']
    assert_includes(last_response.body, 'hello from about.txt')
  end

  def test_change_txt_content
    get '/changes.txt'
    assert_equal 200, last_response.status
    assert_equal 'plain/text', last_response['Content-Type']
    assert_includes(last_response.body, 'hello from changes.txt')
  end

  def test_history_txt_content
    get '/history.txt'
    assert_equal 200, last_response.status
    assert_equal 'plain/text', last_response['Content-Type']
    assert_includes(last_response.body, 'hello from history.txt')
  end
end
