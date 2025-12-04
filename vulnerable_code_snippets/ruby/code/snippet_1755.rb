require 'sinatra'

get '/' do
  "<p>Hello, #{params[:name]}</p>"
end