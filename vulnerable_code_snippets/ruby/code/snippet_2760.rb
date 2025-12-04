class BufferOverflow
  def initialize(size)
    @buffer = Array.new(size)
  end

  def add_to_buffer(element)
    @buffer << element
  end
end

buffer = BufferOverflow.new(5)
10.times { buffer.add_to_buffer(rand(10)) }