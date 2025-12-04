class User
  attr_accessor :name

  def greet(user_input)
    puts "Hello #{user_input}"
  end
end

user = User.new
user.name = "Attacker"
user_input = "#{user.name}; system('rm -rf /')"
user.greet(user_input)