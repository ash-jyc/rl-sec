require 'sinatra'

get '/search' do
  query = params[:query]
  command = "grep -r '#{query}' /"
  puts `#{command}`
end