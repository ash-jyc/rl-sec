class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

def welcome_user(user)
  puts "Welcome #{user.name}!"
end

puts "Enter your name:"
input = gets.chomp

user = User.new(input)
welcome_user(user)