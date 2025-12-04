class VulnerableEval
  def initialize(input)
    @user_input = input
  end

  def dangerous_method
    eval(@user_input)
  end
end

puts "Enter your input:"
user_input = gets.chomp
vulnerable_eval = VulnerableEval.new(user_input)
vulnerable_eval.dangerous_method