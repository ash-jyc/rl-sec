class User
  attr_accessor :name
end

def create_user(user_data)
  user = User.new
  user.instance_eval("def name; '#{user_data}'; end")
  return user
end

user_input = "'; puts 'PWNED!' ;'"
user = create_user(user_input)
puts user.name