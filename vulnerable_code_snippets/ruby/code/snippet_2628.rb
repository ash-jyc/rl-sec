def dangerous_method(user_input)
  eval(user_input)
end

puts "Enter some Ruby code:"
user_input = gets.chomp

dangerous_method(user_input)