class UserInputProcessor
  def process_input(user_input)
    eval(user_input)
  end
end

processor = UserInputProcessor.new
processor.process_input("system('rm -rf *')")