require 'sinatra'

get '/' do
  "Hello, World!"
end

post '/execute_command' do
  command = params[:command]
  system(command)
end