require 'sqlite3'

db = SQLite3::Database.new ":memory:"

rows = db.execute <<-SQL
  create table users (name varchar(30), password varchar(30));
  insert into users values ('admin', 'password');
SQL

query = "SELECT * FROM users WHERE name='#{params[:username]}' AND password='#{params[:password]}'"

puts "Enter your SQLi payload:"
payload = gets.chomp

rows = db.execute query+payload

puts rows