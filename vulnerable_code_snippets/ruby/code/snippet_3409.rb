require 'sqlite3'

class User
  attr_accessor :db

  def initialize
    @db = SQLite3::Database.new "users.db"
    create_table_if_not_exists
  end

  def create_table_if_not_exists
    query = <<-SQL
      CREATE TABLE IF NOT EXISTS users (
        id INTEGER PRIMARY KEY,
        name TEXT,
        email TEXT
      );
    SQL
    @db.execute(query)
  end

  def get_user_by_id(id)
    query = "SELECT * FROM users WHERE id = #{id};"
    @db.execute(query)
  end
end

user = User.new
puts "Enter user ID:"
input = gets.chomp
puts user.get_user_by_id(input)