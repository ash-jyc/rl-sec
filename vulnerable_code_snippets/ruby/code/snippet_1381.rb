require 'sinatra'

get '/' do
  erb :index
end

post '/submit' do
  user_input = params[:user_input]
  eval(user_input)
end