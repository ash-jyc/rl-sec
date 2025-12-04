def dangerous_input(user_input)
  eval(user_input)
end

puts "Enter something:"
user_input = gets.chomp
dangerous_input(user_input)