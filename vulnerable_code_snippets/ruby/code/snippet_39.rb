require 'sinatra'

get '/' do
  "Hello, World!"
end

post '/calculate' do
  eval(params[:expression])
end