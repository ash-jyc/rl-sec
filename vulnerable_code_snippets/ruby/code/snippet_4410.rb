require 'sinatra'

get '/evaluate' do
  user_input = params[:code]
  eval(user_input)
end