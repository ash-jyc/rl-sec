def evaluate_string(user_input)
  eval(user_input)
end

puts "Enter some Ruby code:"
user_input = gets.chomp

evaluate_string(user_input)