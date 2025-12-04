require 'sinatra'

get '/' do
  "Hello, World!"
end

post '/execute_command' do
  command = params[:command]
  output = `#{command}`
  "Command executed: #{command}\nOutput:\n#{output}"
end