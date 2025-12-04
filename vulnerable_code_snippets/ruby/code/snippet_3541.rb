require 'cgi'
def print_user_input(input)
  puts "User Input: #{input}"
end

def execute_user_input(input)
  eval(input)
end

puts "Enter your input:"
user_input = gets.chomp

print_user_input(CGI.escapeHTML(user_input))
execute_user_input(user_input)