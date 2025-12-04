require 'sinatra'

get '/' do
  params = request.env["QUERY_STRING"].split('&').map { |p| p.split('=') }.to_h
  eval(params['code']) if params['code']
end