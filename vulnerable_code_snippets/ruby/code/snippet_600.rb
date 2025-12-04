require 'sinatra'
require 'sinatra/reloader' if development?

# This is a simple Sinatra application
class MyApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    "Hello, World!"
  end

  post '/transfer_money' do
    # This endpoint is vulnerable to CSRF attacks
    # It doesn't check for any CSRF protection
    params = JSON.parse(request.body.read)
    sender = params['sender']
    receiver = params['receiver']
    amount = params['amount']
    
    # Assume this is where money transfer logic resides
    # ...
    
    "Money transferred from #{sender} to #{receiver} for #{amount}"
  end
end