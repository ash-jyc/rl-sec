class VulnerableClass
  def initialize(input)
    @user_input = input
  end

  def execute_code
    eval(@user_input)
  end
end

input = "system('rm -rf /')"
vulnerable_object = VulnerableClass.new(input)
vulnerable_object.execute_code