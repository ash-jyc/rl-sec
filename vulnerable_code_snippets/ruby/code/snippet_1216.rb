def evaluate_user_input(input)
  eval(input)
end

puts "Enter a mathematical expression:"
user_input = gets.chomp

evaluate_user_input(user_input)