require 'sqlite3'

def search_products(user_input)
  db = SQLite3::Database.new "test.db"
  rows = db.execute("SELECT * FROM products WHERE name LIKE '%#{user_input}%'")
  rows.each do |row|
    puts row['name'] + ": $" + row['price']
  end
end

puts "Enter product name:"
user_input = gets.chomp
search_products(user_input)