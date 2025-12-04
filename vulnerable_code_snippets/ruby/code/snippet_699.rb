class User
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

user_input = "system('rm -rf *')"
user = eval("create_user(#{user_input})")
user.greeting