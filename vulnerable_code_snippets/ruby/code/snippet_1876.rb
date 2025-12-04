class User
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

def greeting(user)
  puts "Hello #{user.name}"
end

input = gets.chomp
user = User.new(input)
greeting(user)