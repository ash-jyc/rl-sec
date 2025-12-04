require 'sinatra'
require 'pg'

get '/user/:id' do
  conn = PGconn.connect(:dbname => 'test')
  res  = conn.exec("SELECT * FROM users WHERE id=#{params[:id]}")
  res[0]['username']
end