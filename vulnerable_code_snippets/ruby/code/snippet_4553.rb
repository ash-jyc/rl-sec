require 'open3'

def execute_user_input(user_input)
  # This line is vulnerable to command injection because it directly executes user input
  output = `#{user_input}`
  puts output
end

puts "Enter your command:"
user_input = gets.chomp
execute_user_input(user_input)