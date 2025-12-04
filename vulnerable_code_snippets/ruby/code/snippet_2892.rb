class UserInput
  def initialize(input)
    @input = input
  end

  def process_input
    formatted_input = sprintf("%1024s", @input)
    puts formatted_input
  end
end

user_input = UserInput.new("UserProvidedInput")
user_input.process_input