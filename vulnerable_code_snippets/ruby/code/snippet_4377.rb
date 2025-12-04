require 'sinatra'
require 'sequel'

DB = Sequel.sqlite

DB.create_table :users do
  primary_key :id
  String :name
end

users = DB[:users]

post '/register' do
  name = params[:name]
  users.insert(name: name)
  "User #{name} registered successfully"
end

get '/search' do
  name = params[:name]
  result = DB["SELECT * FROM users WHERE name = '#{name}'"]
  "Search results: #{result}"
end