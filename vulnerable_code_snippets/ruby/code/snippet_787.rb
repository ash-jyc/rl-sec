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

def search_user(query)
  User.where("name = '#{query}'")
end

# An attacker can exploit this by passing a malicious query
search_user("'; DROP TABLE users; --")