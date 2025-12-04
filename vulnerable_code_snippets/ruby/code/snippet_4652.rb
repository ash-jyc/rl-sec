require 'sinatra'

get '/' do
  "Enter your expression:"
end

post '/calculate' do
  eval(params[:expression])
end