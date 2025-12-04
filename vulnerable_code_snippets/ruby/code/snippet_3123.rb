def greet_user(name)
  system("echo Hello, #{name}")
end

puts "Enter your name:"
user_input = gets.chomp

greet_user(user_input)