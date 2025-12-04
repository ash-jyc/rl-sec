class User
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

puts "Enter your name:"
input = gets.chomp

user = create_user(input)
user.greet