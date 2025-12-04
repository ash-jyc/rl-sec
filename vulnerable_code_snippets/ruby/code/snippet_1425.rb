require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: ':memory:'
)

ActiveRecord::Schema.define do
  create_table :users, force: true do |t|
    t.string :username
    t.string :password
  end
end

class User < ActiveRecord::Base
end

def login(username, password)
  query = "SELECT * FROM users WHERE username='#{username}' AND password='#{password}'"
  results = ActiveRecord::Base.connection.execute(query)
  results.count > 0
end

puts "Enter your username:"
username = gets.chomp

puts "Enter your password:"
password = gets.chomp

if login(username, password)
  puts "Login successful!"
else
  puts "Login failed!"
end