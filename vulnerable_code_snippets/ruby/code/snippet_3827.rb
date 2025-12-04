# This is a simple Sinatra application
require 'sinatra'

get '/' do
  "Enter some Ruby code to evaluate:"
end

post '/' do
  result = eval(params[:code])
  "Result: #{result}"
end