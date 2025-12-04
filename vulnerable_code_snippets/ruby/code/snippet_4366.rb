def match_input(input)
  regex = /^(a+)+$/
  return regex.match?(input)
end

puts "Enter input:"
user_input = gets.chomp

if match_input(user_input)
  puts "Match found!"
else
  puts "No match found."
end