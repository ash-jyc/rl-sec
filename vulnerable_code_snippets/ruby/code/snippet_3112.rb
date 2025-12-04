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
  "User #{name} registered."
end

get '/users' do
  content_type :json
  users.select(:name).all.to_json
end