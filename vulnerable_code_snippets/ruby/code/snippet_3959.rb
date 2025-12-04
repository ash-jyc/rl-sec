class User
  attr_accessor :name, :password

  def initialize(name, password)
    @name = name
    @password = password
  end
end

def get_user_info(username)
  user = User.new(username, 'secret')
  puts "User: #{user.name}, Password: #{user.password}"
end

get_user_info('admin')