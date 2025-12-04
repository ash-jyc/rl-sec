require 'sinatra'
require 'sequel'

DB = Sequel.connect('sqlite://db.sqlite3')

get '/users/:id' do
  id = params[:id]
  DB["SELECT * FROM users WHERE id = #{id}"]
end