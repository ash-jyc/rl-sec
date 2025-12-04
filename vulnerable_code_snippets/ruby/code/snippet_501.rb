require 'yaml'
class User
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end
user = User.new("Alice")
serialized_user = YAML::dump(user)
deserialized_user = YAML::load(serialized_user)
puts deserialized_user.name