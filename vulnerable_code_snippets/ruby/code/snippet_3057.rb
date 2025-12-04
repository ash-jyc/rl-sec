require 'pg'

def search_user(username)
  conn = PGconn.connect(:dbname => 'test')
  res  = conn.exec("SELECT * FROM users WHERE username = '#{username}'")
  res.each do |row|
    puts row
  end
ensure
  conn.close if conn
end

puts "Enter your username:"
username = gets.chomp
search_user(username)