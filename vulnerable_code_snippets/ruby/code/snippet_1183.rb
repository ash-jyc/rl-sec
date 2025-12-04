class User
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end
end

def print_user_info(user)
  puts "User Name: #{user.name}"
  puts "User Age: #{user.age}"
end

user = User.new("John Doe", "30")
print_user_info(user)