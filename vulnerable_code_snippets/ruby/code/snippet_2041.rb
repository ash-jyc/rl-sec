# Vulnerable Code

require 'sinatra'

get '/' do
  input = params[:input]
  eval(input) if input
end