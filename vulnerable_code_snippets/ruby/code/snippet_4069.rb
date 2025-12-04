require 'sinatra'

get '/execute_code' do
  code = params[:code]
  eval(code)
end