require 'sinatra'
require 'sequel'

DB = Sequel.sqlite

DB.create_table :users do
  primary_key :id
  String :name
end

users = DB[:users]

post '/search' do
  name = params[:name]
  result = users.where(name: name).all
  result.to_s
end