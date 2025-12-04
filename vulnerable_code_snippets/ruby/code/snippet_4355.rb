class VulnerableClass
  def initialize(input)
    @user_input = input
  end

  def dangerous_method
    eval(@user_input)
  end
end

vulnerable_instance = VulnerableClass.new("puts 'Hello, World!'")
vulnerable_instance.dangerous_method