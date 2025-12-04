class VulnerableClass
  def initialize(input)
    @user_input = input
  end

  def execute_code
    eval(@user_input)
  end
end

vulnerable_instance = VulnerableClass.new("puts 'Hello, World!'")
vulnerable_instance.execute_code