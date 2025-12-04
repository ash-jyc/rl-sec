require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: ':memory:'
)

class User < ActiveRecord::Base; end

User.create(name: 'TestUser')

def fetch_user(id)
  User.find_by_sql("SELECT * FROM users WHERE id = #{id}")
end

user_id = gets.chomp
puts fetch_user(user_id)