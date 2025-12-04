require 'sinatra'

get '/' do
  "Enter your Ruby code:"
end

post '/' do
  eval(params[:code])
end