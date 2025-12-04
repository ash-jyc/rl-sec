class User 
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def greeting
    puts "Hello, #{@name}!"
  end
end

puts "Enter your name:"
user_input = gets.chomp

user = User.new(user_input)
user.greeting

# This is where the vulnerability lies; instance_eval is used without sanitization
puts "Enter some Ruby code to execute:"
code_input = gets.chomp

user.instance_eval(code_input)