# Define a simple class
class MyClass
  def initialize(name)
    @name = name
  end

  def print_name
    puts "Your name is #{@name}"
  end
end

# Create an instance of the class
my_instance = MyClass.new("A" * 1024 * 1024 * 1024)

# Call the method that prints the name
my_instance.print_name