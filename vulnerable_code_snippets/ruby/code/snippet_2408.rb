class UserInput
  def initialize(input)
    @input = input
  end

  def process_input
    if @input.length > 1024
      puts "Buffer Overflow detected!"
    else
      puts "Processing input..."
    end
  end
end

user_input = UserInput.new("a" * 2000)
user_input.process_input