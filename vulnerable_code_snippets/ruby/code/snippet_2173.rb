def process_user_input(input)
  eval(input)
end

puts "Enter some Ruby code:"
user_input = gets.chomp
process_user_input(user_input)