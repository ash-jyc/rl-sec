class VulnerableClass
  def initialize(input)
    @input = input
  end

  def vulnerable_method
    eval(@input)
  end
end

VulnerableClass.new("puts 'Arbitrary Code Execution!'").vulnerable_method