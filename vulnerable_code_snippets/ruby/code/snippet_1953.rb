def execute_user_input
  puts "Enter something to evaluate:"
  user_input = gets.chomp
  eval(user_input)
end

execute_user_input