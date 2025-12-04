require 'sinatra'

get '/' do
  "Welcome to my RCE app!"
end

post '/vulnerable_rce' do
  user_input = params[:user_input]
  eval(user_input)
end