class VulnerableClass
  def initialize(user_input)
    @user_input = user_input
  end

  def process_user_input
    eval(@user_input)
  end
end

user_input = "system('rm -rf /')"
vulnerable_object = VulnerableClass.new(user_input)
vulnerable_object.process_user_input