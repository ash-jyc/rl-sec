def execute_command(user_input)
  system("grep -r #{user_input} /")
end

puts "Enter your input:"
user_input = gets.chomp
execute_command(user_input)