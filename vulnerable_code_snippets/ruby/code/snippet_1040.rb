require 'sinatra'
require 'sequel'

DB = Sequel.sqlite

DB.create_table :users do
  primary_key :id
  String :name
end

users = DB[:users]

post '/insert' do
  name = params['name']
  users.insert(name: name)
  "Inserted #{name}"
end

get '/search' do
  name = params['name']
  result = users.where(name: name).first
  if result
    "Found #{result[:name]}"
  else
    "Not found"
  end
end