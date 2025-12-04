def vuln_method(user_input)
  str = "Hello, "
  str += user_input
  return str
end

puts "Enter your name:"
user_input = gets.chomp

if user_input.length > 1000000
  puts "Input too long!"
else
  puts vuln_method(user_input)
end