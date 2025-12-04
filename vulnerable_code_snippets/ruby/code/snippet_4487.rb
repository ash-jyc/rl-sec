class BufferOverflow
  def initialize(size)
    @buffer = Array.new(size)
  end

  def add_data(data)
    @buffer << data
  end
end

obj = BufferOverflow.new(5)
10.times { |i| obj.add_data(i) }