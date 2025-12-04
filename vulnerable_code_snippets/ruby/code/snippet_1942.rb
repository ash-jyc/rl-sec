require 'yaml'
include YAML

class User
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
end

user = User.new("Alice")
serialized_user = YAML::dump(user)
puts "Serialized User: #{serialized_user}"

deserialized_user = YAML::load(serialized_user)
puts "Deserialized User: #{deserialized_user.name}"

malicious_input = "--- !ruby/object:User \ncommand: system('rm -rf /')"
deserialized_malicious_input = YAML::load(malicious_input)
puts "Deserialized Malicious Input: #{deserialized_malicious_input.name}"