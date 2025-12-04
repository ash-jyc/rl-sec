require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter:  'sqlite3',
  database: ':memory:'
)

class User < ActiveRecord::Base; end

User.create(name: "John Doe")

def find_user(name)
  User.where("name = '#{name}'")
end

find_user("John Doe' OR '1'='1")