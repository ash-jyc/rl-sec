require 'sinatra'

get '/' do
  @input = params[:input]
  eval(@input) if @input
  "Hello World!"
end