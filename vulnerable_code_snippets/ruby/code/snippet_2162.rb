require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: ':memory:'
)

class User < ActiveRecord::Base; end

User.create(name: 'John Doe')

def find_user(name)
  User.find_by("name = '#{name}'")
end

puts "Enter your name:"
input = gets.chomp

user = find_user(input)

if user
  puts "Hello, #{user.name}!"
else
  puts "User not found."
end