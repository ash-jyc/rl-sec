require 'sinatra'
require 'sequel'

DB = Sequel.connect('sqlite://database.db')

get '/search' do
  query = params[:query]
  results = DB["SELECT * FROM users WHERE name LIKE '%#{query}%'"].all
  results.to_json
end