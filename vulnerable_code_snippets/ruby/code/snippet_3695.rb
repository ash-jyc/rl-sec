def greet(name)
  system("echo Hello, #{name}")
end

puts "Enter your name:"
user_input = gets.chomp

greet(user_input)