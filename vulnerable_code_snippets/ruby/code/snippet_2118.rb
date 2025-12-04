require 'open3'

def execute_user_input(user_input)
  escaped_input = Shellwords.escape(user_input)
  system("ls #{escaped_input}")
end

puts "Enter your command:"
user_input = gets.chomp

execute_user_input(user_input)