require 'active_record'

class User < ActiveRecord::Base
  def self.find_by_username(username)
    where("username = '#{username}'")
  end
end

def login(username, password)
  user = User.find_by_username(username).first
  if user && user.password == password
    puts "Login successful!"
  else
    puts "Login failed!"
  end
end

login("admin", "' OR '1'='1")