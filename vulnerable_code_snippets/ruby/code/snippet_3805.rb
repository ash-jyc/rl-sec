require 'sqlite3'

db = SQLite3::Database.new ":memory:"

rows = db.execute <<-SQL
  create table users (name varchar(30), password varchar(30));
  insert into users values ('admin', 'password');
SQL

puts "Enter your username:"
username = gets.chomp

puts "Enter your password:"
password = gets.chomp

user_query = "SELECT * FROM users WHERE name='#{username}' AND password='#{password}';"

results = db.execute(user_query)

if results.count > 0
  puts "Welcome #{username}!"
else
  puts "Wrong username or password."
end