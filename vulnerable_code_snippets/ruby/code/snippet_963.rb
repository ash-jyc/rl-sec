require 'sinatra'
require 'pg'

get '/search' do
  query = "SELECT * FROM users WHERE name = '#{params[:name]}'"
  conn = PGconn.connect(dbname: 'test')
  res  = conn.exec(query)
  res.map { |row| row }.to_s
end