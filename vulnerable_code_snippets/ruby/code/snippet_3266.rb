class User
  attr_accessor :name

  def greet(message)
    puts "Hello #{name}, #{message}"
  end
end

user = User.new
user.name = "John"

user.greet("Your balance is #{`ls`}")