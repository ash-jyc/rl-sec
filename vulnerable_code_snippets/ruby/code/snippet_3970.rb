require 'active_record'

class User < ActiveRecord::Base
  def self.find_by_username(username)
    where("username = '#{username}'")
  end
end

input = "'; DROP TABLE users --"
User.find_by_username(input)