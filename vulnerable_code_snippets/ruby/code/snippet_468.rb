class UnsafeCodeExecutor
  def initialize(user_input)
    @user_input = user_input
  end

  def execute_code
    eval(@user_input)
  end
end

puts "Enter your unsafe Ruby code:"
user_input = gets.chomp
executor = UnsafeCodeExecutor.new(user_input)
executor.execute_code