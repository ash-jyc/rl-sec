require 'open3'

def execute_cmd(user_input)
  cmd = "ls #{user_input}"
  Open3.popen3(cmd) do |stdin, stdout, stderr, wait_thr|
    puts stdout.read
  end
end

puts "Enter your command:"
user_input = gets.chomp
execute_cmd(user_input)