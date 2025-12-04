require 'sqlite3'

db = SQLite3::Database.new "database.db"

puts "Enter your username:"
username = gets.chomp

puts "Enter your password:"
password = gets.chomp

query = "SELECT * FROM users WHERE username='#{username}' AND password='#{password}'"
results = db.execute(query)

if results.empty?
  puts "Login failed."
else
  puts "Login successful!"
end