require 'sinatra'

get '/user/:name' do
  name = params[:name]
  system("echo #{name} >> users.txt")
end