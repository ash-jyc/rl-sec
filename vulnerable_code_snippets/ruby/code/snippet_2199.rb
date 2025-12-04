require 'sinatra'

get '/' do
  "Welcome to my vulnerable web app!"
end

post '/execute' do
  eval(params[:code])
end