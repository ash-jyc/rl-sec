require 'yaml'

class UnsafeUser
  attr_accessor :name, :email

  def initialize(name, email)
    @name = name
    @email = email
  end
end

user_data = "!!ruby/object:UnsafeUser\nname: User1\nemail: user1@example.com"

user = YAML.load(user_data)
puts user.inspect