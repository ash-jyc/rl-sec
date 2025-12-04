require 'open3'

def execute_command(user_input)
  command = "ls #{user_input}"
  stdout, stderr, status = Open3.capture3(command)
  puts stdout
end

puts "Enter your command:"
user_input = gets.chomp
execute_command(user_input)