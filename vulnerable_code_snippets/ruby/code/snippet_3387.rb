require 'yaml'

class User
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
end

user_input = "--- !ruby/object:User\nname: system('rm -rf *')"
user = YAML.load(user_input)
user.name