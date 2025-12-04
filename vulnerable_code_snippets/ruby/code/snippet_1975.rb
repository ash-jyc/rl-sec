require 'yaml'

class UnsafeLoader
  def load_and_parse(user_input)
    YAML.load(user_input)
  end
end

loader = UnsafeLoader.new
user_input = "!!ruby/object:Gem::Requirement\nrequirements:\n  !!ruby/sym\nbash\nversion:\n  !!ruby/object:Gem::Version\n  version: '1.0'\n"
loader.load_and_parse(user_input)