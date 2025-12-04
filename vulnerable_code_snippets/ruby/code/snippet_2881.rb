require 'open3'

def execute_user_input
  puts "Enter your command:"
  user_input = gets.chomp
  Open3.popen3(user_input) do |stdin, stdout, stderr, wait_thr|
    puts stdout.read
  end
end

execute_user_input