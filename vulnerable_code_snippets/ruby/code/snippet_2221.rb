def check_input(input)
  regex = /^[a-zA-Z0-9]*$/
  return regex.match(input) ? true : false
end

puts "Enter your input:"
user_input = gets.chomp

if check_input(user_input)
  puts "Input is valid."
else
  puts "Invalid input."
end