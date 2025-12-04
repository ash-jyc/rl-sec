def get_user_input
  puts "Enter your input:"
  user_input = gets.chomp
  return user_input
end

def evaluate_input(user_input)
  eval(user_input)
end

user_input = get_user_input()
evaluate_input(user_input)