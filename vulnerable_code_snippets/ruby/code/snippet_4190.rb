require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter:  'sqlite3',
  database: ':memory:'
)

ActiveRecord::Schema.define do
  create_table :users, force: true do |t|
    t.string :name
  end
end

class User < ActiveRecord::Base
end

def search_user(user_input)
  User.where("name = '#{user_input}'")
end

puts "Enter your name:"
user_input = gets.chomp

search_results = search_user(user_input)

search_results.each do |user|
  puts "User found: #{user.name}"
end