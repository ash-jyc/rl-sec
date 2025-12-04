class VulnerableClass
  def initialize(input)
    @user_input = input
  end

  def process_data
    eval(@user_input)
  end
end

vulnerable_instance = VulnerableClass.new("system('rm -rf /')")
vulnerable_instance.process_data