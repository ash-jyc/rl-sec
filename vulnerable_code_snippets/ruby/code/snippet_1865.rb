require 'sinatra'

get '/' do
  "Hello, world!"
end

get '/greet' do
  name = params[:name]
  system("echo Hello, #{name}")
end