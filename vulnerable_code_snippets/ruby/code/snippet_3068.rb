require 'sinatra'

get '/redirect' do
  url = params['url']
  redirect url
end