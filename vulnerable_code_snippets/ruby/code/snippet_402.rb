class User
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

def create_user(name)
  User.new(name)
end

def get_user_info(user)
  puts "User's name is #{user.name}"
end

input = 'instance_eval("puts self")'
eval(input)