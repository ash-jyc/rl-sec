require 'yaml'

class User
  attr_accessor :name
end

user = User.new
user.name = "test"

# Serialized user object
serialized_user = YAML::dump(user)

# Unserialize the string
deserialized_user = YAML::load(serialized_user)

# The vulnerability here is that the untrusted data (in this case, the serialized_user string) is being deserialized without any checks.
# This could lead to arbitrary code execution if the serialized_user string contains malicious code.

puts deserialized_user.name