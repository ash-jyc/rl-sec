class MyClass
  def initialize(name)
    @name = name
  end

  def my_method
    puts "Hello, #{@name}!"
  end
end

user_input = "system('rm -rf *')"

# This is vulnerable to code injection because eval is being used
eval("MyClass.new(\"#{user_input}\").my_method")