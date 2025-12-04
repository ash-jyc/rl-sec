class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def introduce
    puts "Hello, my name is #{@name}!"
  end
end

def create_user(name)
  User.new(name)
end

input = "User.new('John Doe').introduce"
eval(input)