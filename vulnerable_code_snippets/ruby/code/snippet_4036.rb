class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello, #{@name}!"
  end
end

def create_user(name)
  User.new(name)
end

def execute_code(user_input)
  eval(user_input)
end

puts "Enter your name:"
user_input = gets.chomp

user = create_user(user_input)
execute_code("user.greet")