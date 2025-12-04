require 'yaml'

class User
  attr_accessor :name
end

def load_user(yaml_string)
  YAML.load(yaml_string)
end

def create_yaml_string(name)
  user = User.new
  user.name = name
  YAML.dump(user)
end

yaml_string = create_yaml_string("vulnerable_code")
user = load_user(yaml_string)
puts user.name