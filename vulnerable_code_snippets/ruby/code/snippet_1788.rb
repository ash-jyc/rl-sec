require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: ':memory:'
)

class User < ActiveRecord::Base; end

User.create(name: 'Bob')

def find_user(name)
  User.where("name = '#{name}'")
end

# Vulnerable Code
puts "Enter your name:"
input = gets.chomp

find_user(input)