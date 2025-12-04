require 'sqlite3'

db = SQLite3::Database.new "database.db"

def get_user_input
  gets.chomp
end

def fetch_user_data(username)
  db.execute("SELECT * FROM users WHERE username = '#{username}'")
end

puts "Enter your username:"
username = get_user_input

fetch_user_data(username)