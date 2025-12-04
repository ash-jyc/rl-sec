require 'sinatra'
require 'pg'

get '/search' do
  search_term = params[:search]
  conn = PGconn.connect(dbname: 'mydatabase')
  results = conn.exec("SELECT * FROM users WHERE name = '#{search_term}'")
  results.map { |row| row['name'] }.join(', ')
end