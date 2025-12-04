require 'yaml'

class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

user = User.new("Alice")
serialized_user = YAML::dump(user)

# Unserialize the user object
deserialized_user = YAML::load(serialized_user)
puts deserialized_user.name

# This will print "Alice"

# Now let's create a malicious serialized user object
malicious_user = YAML::dump(User.new("system('rm -rf /')"))

# Deserialize the malicious user object
deserialized_malicious_user = YAML::load(malicious_user)
puts deserialized_malicious_user.name

# This will execute the system command "rm -rf /", deleting all files on the system