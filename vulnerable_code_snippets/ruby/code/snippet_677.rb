require 'sinatra'

get '/' do
  eval params[:code]
end