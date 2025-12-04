require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: ':memory:'
)

ActiveRecord::Schema.define do
  create_table :users, force: true do |t|
    t.string :name
  end
end

class User < ActiveRecord::Base
end

def search_user(input)
  User.where("name = '#{input}'")
end

puts "Enter your name:"
name = gets.chomp

users = search_user(name)

if users.any?
  puts "Welcome back, #{users.first.name}!"
else
  puts "Hello, new user!"
end