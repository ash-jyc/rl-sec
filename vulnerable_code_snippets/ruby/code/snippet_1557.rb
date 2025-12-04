def evaluate_input(user_input)
  begin
    eval(user_input)
  rescue Exception => e
    puts "An error occurred: #{e.message}"
  end
end

puts "Enter some Ruby code to evaluate:"
user_input = gets.chomp
evaluate_input(user_input)