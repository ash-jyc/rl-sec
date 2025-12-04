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
  users.insert(name: "#{name}")
end

get '/user/:id' do
  id = params[:id]
  user = users[id: id.to_i]
  "Hello #{user[:name]}!"
end