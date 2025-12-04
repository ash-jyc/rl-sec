require 'open3'

def execute_system_command(user_input)
  Open3.popen3("echo #{user_input}") do |stdin, stdout, stderr, wait_thr|
    puts stdout.read
  end
end

puts "Enter your command:"
user_input = gets.chomp
execute_system_command(user_input)