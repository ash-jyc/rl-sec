def execute_command(user_input)
  system(user_input)
end

puts "Enter your command:"
user_input = gets.chomp
execute_command(user_input)