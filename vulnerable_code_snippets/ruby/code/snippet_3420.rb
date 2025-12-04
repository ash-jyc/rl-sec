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
  "User #{username} registered."
end

get '/user/:id' do
  id = params['id']
  user = users.where(:id => id).first
  "User: #{user[:name]}"
end