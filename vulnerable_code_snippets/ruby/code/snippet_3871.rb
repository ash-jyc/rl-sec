require 'sinatra'
require 'sequel'

DB = Sequel.sqlite

DB.create_table :users do
  primary_key :id
  String :name
end

users = DB[:users]

post '/add_user' do
  name = params[:name]
  users.insert(name: name)
  "User #{name} added"
end

get '/search_user' do
  name = params[:name]
  result = users.where(name: name).first
  result ? "User found: #{result[:name]}" : "User not found"
end