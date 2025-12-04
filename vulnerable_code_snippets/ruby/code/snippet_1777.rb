require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: ':memory:'
)

class User < ActiveRecord::Base; end

User.create(name: 'user1')
User.create(name: 'user2')

def get_user_data(username)
  User.where("name = '#{username}'")
end

puts "Enter username:"
username = gets.chomp

result = get_user_data(username)

if result.present?
  puts "User found: #{result.first.name}"
else
  puts "User not found"
end