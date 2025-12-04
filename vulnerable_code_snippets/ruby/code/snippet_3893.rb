# This is a simple example of a Ruby script that may cause a buffer overflow
# due to improper handling of string input.

def process_input(user_input)
  eval(user_input)
end

puts "Enter some Ruby code:"
user_input = gets.chomp

process_input(user_input)