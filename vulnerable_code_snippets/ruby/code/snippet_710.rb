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

def search_user(name)
  User.where("name = '#{name}'")
end

# This is where the vulnerability happens, 
# the input is not sanitized, allowing an attacker to inject SQL
search_user("test' OR '1'='1")