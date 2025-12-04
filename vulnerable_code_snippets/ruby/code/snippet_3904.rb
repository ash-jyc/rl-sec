class VulnerableClass
  def initialize(user_input)
    @buffer = "\x00" * 1024
    user_input.each_byte.with_index do |byte, index|
      @buffer[index] = byte
    end
  end
end

user_input = "A" * 2048
vulnerable_instance = VulnerableClass.new(user_input)