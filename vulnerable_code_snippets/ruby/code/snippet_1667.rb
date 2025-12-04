require 'sqlite3'

db = SQLite3::Database.new('test.db')

def get_user_input
  gets.chomp
end

def execute_query(db, query)
  db.execute(query)
end

puts "Enter your SQL query:"
query = get_user_input
execute_query(db, query)