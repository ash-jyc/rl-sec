class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def say_hello
    puts "Hello, #{@name}!"
  end
end

def create_user(name)
  User.new(name)
end

# Unsafe input from user
unsafe_input = "system('rm -rf *')"

# Evaluate user input using eval
user = eval("create_user('#{unsafe_input}')")

# This will execute 'rm -rf *' command
user.say_hello