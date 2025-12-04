require 'sinatra'

get '/execute' do
  eval(params[:code])
end