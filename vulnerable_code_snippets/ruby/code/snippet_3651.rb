require 'sinatra'
require 'sinatra/cookies'

get '/' do
  cookies[:user_id] = params[:user_id] if params[:user_id]
  "Hello, #{cookies[:user_id]}!"
end

get '/steal_cookie' do
  "<script>document.write('" + cookies[:user_id] + "')</script>"
end