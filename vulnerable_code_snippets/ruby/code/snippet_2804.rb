def process_input(user_input)
  eval(user_input)
end

puts "Enter your command:"
user_input = gets.chomp
process_input(user_input)