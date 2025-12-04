require 'sqlite3'

db = SQLite3::Database.new ":memory:"

db.execute <<-SQL
    CREATE TABLE users (id INTEGER PRIMARY KEY, name TEXT, password TEXT);
    INSERT INTO users VALUES (1, 'admin', 'password');
SQL

def login(username, password)
  db = SQLite3::Database.new ":memory:"
  result = db.execute("SELECT * FROM users WHERE name='#{username}' AND password='#{password}'")
  result.length > 0
end

puts "Enter your username:"
username = gets.chomp

puts "Enter your password:"
password = gets.chomp

if login(username, password)
  puts "Logged in successfully!"
else
  puts "Invalid credentials!"
end