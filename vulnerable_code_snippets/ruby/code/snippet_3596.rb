class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello, #{@name}!"
  end
end

user_input = "User.new('vulnerable_user').greet"
eval(user_input)