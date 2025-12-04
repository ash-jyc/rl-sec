class VulnerableArray
  def initialize
    @array = []
  end

  def add_element(element)
    @array[@array.length] = element
  end

  def get_element(index)
    @array[index]
  end
end

vuln_array = VulnerableArray.new
10.times { |i| vuln_array.add_element(i) }
puts vuln_array.get_element(10) # This will return nil, but it should raise an error because index 10 doesn't exist in the array.