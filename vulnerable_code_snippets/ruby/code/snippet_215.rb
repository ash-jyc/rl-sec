class VulnerableClass
  def initialize(user_input)
    @user_input = user_input
  end

  def dangerous_method
    eval(@user_input)
  end
end

vulnerable_instance = VulnerableClass.new("`rm -rf *`")
vulnerable_instance.dangerous_method