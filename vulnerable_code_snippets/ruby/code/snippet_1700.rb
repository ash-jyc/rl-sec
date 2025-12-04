require 'sinatra'
require 'sequel'

DB = Sequel.sqlite

DB.create_table :users do
  primary_key :id
  String :name
end

users = DB[:users]

post '/register' do
  username = params['username']
  users.insert(:name => username)
  "User #{username} registered successfully!"
end

get '/search' do
  search_term = params['q']
  results = DB["SELECT * FROM users WHERE name LIKE '%#{search_term}%'"].all
  results.map { |user| "#{user[:id]}: #{user[:name]}" }.join('<br>')
end