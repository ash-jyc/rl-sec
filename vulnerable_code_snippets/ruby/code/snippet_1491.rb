require 'sinatra'

get '/search' do
  query = params[:query]
  system("grep -r #{query} /")
end