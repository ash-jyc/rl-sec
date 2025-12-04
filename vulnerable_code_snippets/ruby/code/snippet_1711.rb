require 'sinatra'
require 'mysql2'

client = Mysql2::Client.new(:host => "localhost", :username => "root", :password => "", :database => "test")

get '/user/:id' do
  id = params[:id]
  result = client.query("SELECT * FROM users WHERE id = #{id}")
  result.each do |row|
    return row.to_s
  end
end