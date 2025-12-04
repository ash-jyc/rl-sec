require 'cgi'
puts "Enter your name:"
user_input = gets.chomp
system("echo Hello, #{user_input}")