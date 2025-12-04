def evaluate_input(user_input)
  eval("#{user_input}")
end

puts "Enter your command:"
user_input = gets.chomp
evaluate_input(user_input)