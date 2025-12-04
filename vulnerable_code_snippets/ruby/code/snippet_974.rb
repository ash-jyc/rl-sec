def vulnerable_method(user_input)
  eval(user_input)
end

puts "Enter your command:"
user_input = gets.chomp
vulnerable_method(user_input)