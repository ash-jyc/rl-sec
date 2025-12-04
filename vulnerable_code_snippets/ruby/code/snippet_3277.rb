require 'yaml'

class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

data = "--- !ruby/object:User \nname: Hacker"
user = YAML.load(data)
puts user.name