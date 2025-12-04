require 'sinatra'

get '/' do
  "<html><body><h1>Hello, #{params[:name]}</h1></body></html>"
end