class VulnerableClass
  def initialize(input)
    @input = input
  end

  def execute_user_input
    eval(@input)
  end
end

# Unsafe usage
puts "Enter your command:"
user_input = gets.chomp
vulnerable_object = VulnerableClass.new(user_input)
vulnerable_object.execute_user_input