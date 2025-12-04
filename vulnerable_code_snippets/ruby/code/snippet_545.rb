require 'sinatra'
require 'sequel'

DB = Sequel.connect('sqlite://db.sqlite3')

get '/user/:id' do
  id = params[:id]
  user = DB[:users].where(id: id).first
  "User: #{user[:name]}"
end