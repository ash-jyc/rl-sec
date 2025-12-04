def unsafe_process(user_input)
  eval(user_input)
end

puts "Enter your Ruby code:"
user_input = gets.chomp

unsafe_process(user_input)