def vulnerable_method(input)
  buffer = Array.new(1024)
  input.each_byte.with_index do |byte, index|
    buffer[index % buffer.size] = byte
  end
  output = buffer.pack('C*')
end

vulnerable_method("A" * 1024 * 1024 * 1024)