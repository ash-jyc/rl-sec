require 'yaml'

class User
  attr_accessor :name, :email

  def initialize(name, email)
    @name = name
    @email = email
  end
end

def load_user_data(file_path)
  data = File.read(file_path)
  YAML.load(data)
end

user_data = load_user_data('untrusted_data.yml')
user = User.new(user_data[:name], user_data[:email])
puts "Welcome #{user.name}!"