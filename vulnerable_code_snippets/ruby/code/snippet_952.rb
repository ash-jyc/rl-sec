class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greetings
    puts "Hello, #{@name}!"
  end
end

def create_user(name)
  User.new(name)
end

input = gets.chomp
# Vulnerable line
user = eval("create_user('#{input}')")
user.greetings