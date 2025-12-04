def process_form(user_input)
  eval(user_input)
end

puts "Enter a mathematical expression:"
user_input = gets.chomp
process_form(user_input)