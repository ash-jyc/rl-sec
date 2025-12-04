require 'sinatra'

get '/redirect' do
  redirect params['url'], 302
end