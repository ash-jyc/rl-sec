def evaluate_user_input(user_input)
  eval(user_input)
end

puts "Enter some Ruby code to evaluate:"
user_input = gets.chomp

evaluate_user_input(user_input)