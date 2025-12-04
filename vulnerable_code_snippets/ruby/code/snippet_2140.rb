require 'active_record'

class User < ActiveRecord::Base
  def self.find_by_username(username)
    query = "SELECT * FROM users WHERE username = '#{username}'"
    find_by_sql(query)
  end
end

# This will cause SQL injection
User.find_by_username("test' OR '1'='1")