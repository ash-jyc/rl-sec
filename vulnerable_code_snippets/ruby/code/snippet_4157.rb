class User
  attr_accessor :name, :password

  def initialize(name, password)
    @name = name
    @password = password
  end
end

user = User.new('John Doe', 'secret')

puts "User: #{user.name}, Password: #{user.password}"