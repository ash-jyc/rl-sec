class User
  attr_accessor :name, :password

  def initialize(name, password)
    @name = name
    @password = password
  end
end

def login(user)
  puts "Logging in as #{user.name} with password #{user.password}"
end

untrusted_input = User.new("John Doe", "secret")
login(untrusted_input)