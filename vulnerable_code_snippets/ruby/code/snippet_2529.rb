require 'sinatra'

get '/' do
  data = params[:data]
  eval(data) if data
end