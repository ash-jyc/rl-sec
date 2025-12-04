require 'yaml'

class EvilObject
  def initialize
    @command = "system('rm -rf /')"
  end
end

evil_object = EvilObject.new
serialize_object = YAML::dump(evil_object)
deserialized_object = YAML::load(serialize_object)
deserialized_object.instance_eval(@command)