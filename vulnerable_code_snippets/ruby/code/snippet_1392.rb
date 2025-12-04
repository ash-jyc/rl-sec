class UnsafeCode
  def initialize(input)
    @buffer = Array.new(1024)
    @input = input
  end

  def copy_to_buffer
    @input.each_char.with_index do |char, index|
      @buffer[index] = char
    end
  end
end

user_input = gets.chomp
unsafe_code = UnsafeCode.new(user_input)
unsafe_code.copy_to_buffer