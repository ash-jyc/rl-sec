def process_input(user_input)
  output = Array.new(user_input.length)
  user_input.each_with_index do |value, index|
    output[index] = value * 2
  end
  return output
end

puts "Enter your input:"
user_input = gets.chomp.to_i
output = process_input(user_input)
puts "Output: #{output}"