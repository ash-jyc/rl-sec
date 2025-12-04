class MyClass
  def initialize(input)
    @input = input
  end

  def dangerous_method
    eval(@input)
  end
end

puts "Enter something:"
user_input = gets.chomp

my_object = MyClass.new(user_input)
my_object.dangerous_method