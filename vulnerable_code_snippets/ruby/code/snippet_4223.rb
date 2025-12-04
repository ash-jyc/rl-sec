def run_command(user_input)
  system(user_input)
end

puts "Enter your command:"
user_input = gets.chomp
run_command(user_input)