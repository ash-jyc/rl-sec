require 'sqlite3'

db = SQLite3::Database.new "test.db"

puts "Enter your username:"
username = gets.chomp

puts "Enter your password:"
password = gets.chomp

user_query = "SELECT * FROM users WHERE username='#{username}' AND password='#{password}'"
results = db.execute( user_query )

results.each do |row|
  puts row
end

db.close if db