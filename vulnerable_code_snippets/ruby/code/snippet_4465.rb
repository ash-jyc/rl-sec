require 'sinatra'

get '/' do
  "<html><body><h1>Welcome #{params['name']}</h1></body></html>"
end