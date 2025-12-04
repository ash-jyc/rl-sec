def calculate(input)
  eval(input)
end

puts "Enter your expression:"
user_input = gets.chomp

begin
  result = calculate(user_input)
  puts "Result: #{result}"
rescue Exception => e
  puts "Invalid input"
end