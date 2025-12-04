require 'yaml'

class EvilObject
  def initialize
    @command = "system('rm -rf /')"
  end

  def marshal_dump
    [@command]
  end

  def marshal_load(command)
    @command = command
  end

  def execute
    eval(@command)
  end
end

evil_object = EvilObject.new
serialized_object = YAML::dump(evil_object)
deserialized_object = YAML::load(serialized_object)
deserialized_object.execute