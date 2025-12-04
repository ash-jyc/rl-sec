require 'active_record'

# Set up database connection
ActiveRecord::Base.establish_connection(
  adapter:  'sqlite3',
  database: ':memory:'
)

class User < ActiveRecord::Base; end

# Create users table
ActiveRecord::Schema.define do
  create_table :users, force: true do |t|
    t.string :name
  end
end

# Unsafe method, vulnerable to SQL injection
def find_user_by_name(name)
  User.where("name = '#{name}'")
end

# This is where the vulnerability occurs
# If you pass a string like "test' OR '1'='1" as the name, it will return all users
# because of the SQL injection vulnerability
puts find_user_by_name("test' OR '1'='1")