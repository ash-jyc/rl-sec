class User
  def initialize(name)
    $user_name = name
  end
end

class Admin
  def change_username(new_name)
    $user_name = new_name
  end
end

u1 = User.new("John")
a1 = Admin.new
a1.change_username("Alice")
puts $user_name