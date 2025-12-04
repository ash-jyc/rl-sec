require 'sinatra'
require 'sequel'

DB = Sequel.connect('sqlite://my_database.db')

get '/users/:id' do
  id = params[:id]
  user = DB[:users].first(id: id)
  "User: #{user[:name]}"
end