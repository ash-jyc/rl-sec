require 'sinatra'
require 'sequel'

DB = Sequel.sqlite('db/database.sqlite3')

get '/users/:id' do
  id = params[:id]
  DB["SELECT * FROM users WHERE id = #{id}"]
end