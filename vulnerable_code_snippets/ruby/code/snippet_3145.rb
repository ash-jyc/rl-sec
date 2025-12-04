class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

def create_user(input)
  User.new(input)
end

puts "Enter your name:"
input = gets.chomp
user = create_user(input)
puts "Hello, #{user.name}!"