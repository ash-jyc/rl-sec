require 'sinatra'

get '/' do
  "Hello, World!"
end

post '/login' do
  username = params['username']
  password = params['password']
  system("echo #{username} > users.txt")
  system("echo #{password} >> users.txt")
  "User credentials saved successfully"
end