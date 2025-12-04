def unsafe_input(user_input)
  eval(user_input)
end

puts "Enter some Ruby code:"
user_input = gets.chomp

unsafe_input(user_input)