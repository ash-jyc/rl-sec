def execute_command(user_input)
  puts `#{user_input}`
end

puts "Enter your command:"
user_input = gets.chomp
execute_command(user_input)