require 'cgi'

def execute_command(user_input)
  cleaned_input = CGI.escapeHTML(user_input)
  system("echo #{cleaned_input} > output.txt")
end

puts "Enter your command:"
user_input = gets.chomp
execute_command(user_input)