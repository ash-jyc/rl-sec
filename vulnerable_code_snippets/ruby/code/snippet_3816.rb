class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

class Admin < User
  attr_accessor :admin_id

  def initialize(name, admin_id)
    super(name)
    @admin_id = admin_id
  end
end

def print_user_info(user)
  puts "User Name: #{user.name}"
  puts "Admin ID: #{user.admin_id}"
end

admin = Admin.new("John Doe", 12345)
print_user_info(admin)