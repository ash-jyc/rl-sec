def evaluate_user_input(input)
  eval(input)
end

puts "Enter some Ruby code to execute:"
user_input = gets.chomp

evaluate_user_input(user_input)