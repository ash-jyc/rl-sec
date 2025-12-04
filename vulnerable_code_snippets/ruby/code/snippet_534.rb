require 'yaml'

class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

user = User.new("Test")
serialized_user = YAML::dump(user)
deserialized_user = YAML::load(serialized_user)
puts deserialized_user.name

# Attacker can manipulate the serialized_user string to execute arbitrary code
malicious_user = "--- !ruby/object:User \nname: system('rm -rf /')"
deserialized_malicious_user = YAML::load(malicious_user)
puts deserialized_malicious_user.name