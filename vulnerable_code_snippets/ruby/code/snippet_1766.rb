class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello, #{@name}!"
  end
end

def create_user
  puts "Enter your name:"
  name = gets.chomp
  User.new(name)
end

user = create_user
user.greet