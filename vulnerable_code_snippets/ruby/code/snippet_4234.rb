require 'sinatra'
enable :sessions

get '/' do
  "Welcome to our bank!"
end

get '/deposit' do
  if session[:logged_in]
    "Deposit page"
  else
    "Not logged in"
  end
end

post '/deposit' do
  if session[:logged_in]
    "Deposited #{params[:amount]} to your account"
  else
    "Not logged in"
  end
end

get '/login' do
  session[:logged_in] = true
  "Logged in"
end

get '/logout' do
  session[:logged_in] = false
  "Logged out"
end