require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new ':memory:'

get '/users/:id' do
  id = params[:id]
  rows = db.execute "SELECT * FROM users WHERE id=#{id}"
  rows.to_s
end