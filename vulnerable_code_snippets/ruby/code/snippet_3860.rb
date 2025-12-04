class Vulnerable
  def initialize(input)
    @user_input = input
  end

  def eval_user_input
    eval(@user_input)
  end
end

vulnerable = Vulnerable.new("System('rm -rf *')")
vulnerable.eval_user_input