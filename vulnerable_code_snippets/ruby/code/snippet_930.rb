class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greeting
    puts "Hello, #{@name}!"
  end
end

def create_user(name)
  User.new(name)
end

def greet_user(user, greeting)
  eval("user.#{greeting}")
end

puts "Enter your name:"
name = gets.chomp

user = create_user(name)

puts "Enter your greeting:"
greeting = gets.chomp

greet_user(user, greeting)