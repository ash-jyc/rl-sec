require 'rack/session/cookie'
require 'rack/session/abstract/id'

class MyApp
  attr_reader :request, :response

  def initialize(request, response)
    @request = request
    @response = response
  end

  def call(env)
    session_id = request.cookies['rack.session']
    session = env['rack.session'] ||= {}
    session[:user_id] ||= User.find_by_session_id(session_id).try(:id)
    # Vulnerable line: Session ID is stored in cookie and can be stolen
    response.set_cookie('rack.session', session_id) if session_id.present?
    [200, {}, ['Hello, World']]
  end
end

class User
  def self.find_by_session_id(session_id)
    # Dummy method
  end
end

use Rack::Session::Cookie, key: 'rack.session', path: '/', secret: 'secret'
run MyApp.new