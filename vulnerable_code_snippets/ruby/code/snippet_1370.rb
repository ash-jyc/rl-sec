require 'yaml'

class User
  attr_accessor :name, :email

  def initialize(name, email)
    @name = name
    @email = email
  end
end

user_data = "!!ruby/object:User\nname: Attacker\nemail: \"system('rm -rf *')\""
user = YAML.load(user_data)
user.email