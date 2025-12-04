class UserInput
  def initialize(input)
    @input = input
  end

  def process_input
    eval(@input)
  end
end

user_input = UserInput.new("system('rm -rf *')")
user_input.process_input