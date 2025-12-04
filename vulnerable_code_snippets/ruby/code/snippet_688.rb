require 'yaml'

class EvilObject
  def initialize
    @command = "system('rm -rf /')"
  end
end

evil_object = EvilObject.new
serialized_evil_object = YAML::dump(evil_object)
deserialized_evil_object = YAML::load(serialized_evil_object)