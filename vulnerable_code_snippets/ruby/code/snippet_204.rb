class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello, #{@name}!"
  end
end

# An attacker can manipulate the input to inject malicious code
input = "User.new('Attacker').instance_eval { p 'Malicious Code Execution' }"
user = eval(input)
user.greet