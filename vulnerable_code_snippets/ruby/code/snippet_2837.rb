require 'sinatra'
require 'sequel'

DB = Sequel.sqlite

DB.create_table :users do
  primary_key :id
  String :name
end

users = DB[:users]

post '/update_user' do
  id = params[:id]
  name = params[:name]
  users.where(id: id).update(name: name)
end