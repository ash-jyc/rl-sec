require 'yaml'

class User
  attr_accessor :name
end

def load_user(data)
  YAML.load(data)
end

malicious_data = "--- !ruby/object:User \nname: 'system(\"rm -rf /\")'"
user = load_user(malicious_data)
user.name