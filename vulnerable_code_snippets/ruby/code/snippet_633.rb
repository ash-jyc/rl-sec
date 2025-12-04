require 'yaml'

user_input = "!!ruby/object:Gem::Requirement\nrequirements:\n  !!ruby/sym :version\nversion: !ruby/object:Gem::Version\nversion: 1.0\n"

YAML.load(user_input)