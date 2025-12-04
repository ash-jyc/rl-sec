class VulnerableClass
  def initialize(input_data)
    @buffer = Array.new(1024)
    input_data.each_with_index do |value, index|
      @buffer[index] = value
    end
  end
end

def generate_large_input()
  large_input = []
  1500.times { large_input << 'A' }
  return large_input
end

large_input = generate_large_input()
vulnerable_instance = VulnerableClass.new(large_input)