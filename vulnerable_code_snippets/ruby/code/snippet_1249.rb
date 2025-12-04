require 'active_record'

class User < ActiveRecord::Base
end

def find_user(id)
  User.find(id)
end

def vulnerable_method(input)
  id = input
  user = find_user(id)
  puts user.name
end

vulnerable_method("1 OR 1=1")