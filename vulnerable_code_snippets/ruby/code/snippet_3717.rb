def get_user_input
  puts "Enter some Ruby code:"
  user_input = gets.chomp
  eval(user_input)
end

get_user_input