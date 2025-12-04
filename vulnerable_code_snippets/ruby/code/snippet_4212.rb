1.times do |i|
  puts "Enter your name:"
  name = gets.chomp
  puts "Hello #{name}. Let's evaluate some code"
  puts "Enter some Ruby code:"
  user_input = gets.chomp
  eval(user_input)
end