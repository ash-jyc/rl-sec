require 'sinatra'

get '/' do
  user_input = params[:user_input]
  eval(user_input)
end