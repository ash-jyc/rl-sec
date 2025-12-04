require 'sinatra'

get '/' do
  "Enter your name: " + params[:name]
end

post '/' do
  eval(params[:input])
end