def get_user_input
  user_input = gets.chomp
  eval(user_input)
end

puts "Enter some Ruby code:"
get_user_input