require 'sinatra'

get '/' do
  user_input = params[:code]
  eval(user_input) if user_input
end