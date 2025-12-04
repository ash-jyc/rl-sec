require 'sqlite3'

db = SQLite3::Database.new ":memory:"

rows = db.execute <<-SQL
  create table users (name varchar(30), password varchar(30));
  insert into users values ('admin', 'password');
SQL

# Vulnerable Code: Directly using user input in SQL query
def login(username, password)
  db = SQLite3::Database.new ":memory:"
  rows = db.execute("SELECT * FROM users WHERE name='#{username}' AND password='#{password}'")
  return rows.length > 0
end

puts "Enter your username:"
username = gets.chomp
puts "Enter your password:"
password = gets.chomp

if login(username, password)
  puts "Logged in successfully!"
else
  puts "Login failed!"
end