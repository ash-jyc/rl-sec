def dangerous_method(user_input)
  eval(user_input)
end

puts "Enter your command:"
user_input = gets.chomp

dangerous_method(user_input)