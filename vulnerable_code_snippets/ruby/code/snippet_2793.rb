def concatenate_strings(input_string)
  result = ""
  input_string.split('').each do |char|
    result += char * 2
  end
  result
end

puts "Enter a string:"
user_input = gets.chomp

if user_input.length > 1000000
  puts "Input too long!"
else
  puts concatenate_strings(user_input)
end