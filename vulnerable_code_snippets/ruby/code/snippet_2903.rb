require 'open3'

def execute_command(user_input)
  command = "ls #{user_input}"
  Open3.popen3(command) do |stdin, stdout, stderr, wait_thr|
    puts stdout.read
  end
end

puts "Enter your command:"
user_input = gets.chomp
execute_command(user_input)