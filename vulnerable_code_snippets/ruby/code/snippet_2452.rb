require 'sqlite3'

def search_user(username)
  db = SQLite3::Database.new "users.db"
  rows = db.execute("SELECT * FROM users WHERE username='#{username}'")
  rows.each do |row|
    puts row.join("\s")
  end
end

puts "Enter your username:"
username = gets.chomp
search_user(username)