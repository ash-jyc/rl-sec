# Define a class User
class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greeting
    puts "Hello, #{@name}"
  end
end

# Get user input from command line
puts "Enter your name:"
user_input = gets.chomp

# Create a new User object with user input
user = User.new(user_input)

# Call the greeting method
user.greeting