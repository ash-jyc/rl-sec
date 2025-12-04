require 'sinatra'
require 'pg'

get '/users/:id' do
  conn = PGconn.connect(:dbname => 'test')
  res  = conn.exec("SELECT * FROM users WHERE id=#{params[:id]}")
  res.map { |row| row }.to_s
end