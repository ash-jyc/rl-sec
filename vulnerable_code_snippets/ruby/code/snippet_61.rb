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
  eval("User.new('#{name}')")
end

input = gets.chomp
user = create_user(input)
user.greeting