class User
  attr_accessor :name, :password

  def initialize(name, password)
    @name = name
    @password = password
  end
end

class Admin < User
  def delete_user(user)
    puts "Deleting user #{user.name}"
  end
end

admin = Admin.new('admin', 'password')
user = User.new('user', 'password')

# No input validation check here
admin.delete_user(user)