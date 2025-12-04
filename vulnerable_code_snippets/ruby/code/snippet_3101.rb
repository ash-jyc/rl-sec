class VulnerableClass
  $global_variable = []

  def initialize
    @local_variable = []
  end

  def add_to_global(element)
    $global_variable << element
  end

  def add_to_local(element)
    @local_variable << element
  end
end

vulnerable_instance = VulnerableClass.new

100000.times do |i|
  vulnerable_instance.add_to_global(i)
  vulnerable_instance.add_to_local(i)
end