require 'sinatra'

get '/eval' do
  eval(params[:code])
end