require 'sqlite3'

db = SQLite3::Database.new ":memory:"

db.execute <<-SQL
    CREATE TABLE users (id INTEGER PRIMARY KEY, name TEXT, password TEXT);
    INSERT INTO users VALUES (1, 'admin', 'password');
SQL

def login(username, password)
  db = SQLite3::Database.new ":memory:"
  query = "SELECT * FROM users WHERE name = '#{username}' AND password = '#{password}';"
  result = db.execute(query)
  if result.length > 0
    puts "Login successful!"
  else
    puts "Login failed!"
  end
end

puts "Enter your username:"
username = gets.chomp
puts "Enter your password:"
password = gets.chomp

login(username, password)