require 'sinatra'

get '/' do
  "Hello, world!"
end

post '/evaluate' do
  eval(params[:code])
end