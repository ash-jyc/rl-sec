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

def search_user(query)
  User.where("name = '#{query}'")
end

puts "Enter your query:"
query = gets.chomp

results = search_user(query)

results.each do |user|
  puts "Found user: #{user.name}"
end