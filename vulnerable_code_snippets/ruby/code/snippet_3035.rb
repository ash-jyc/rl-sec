def vulnerable_method(user_input)
  system("ls #{user_input}")
end

user_input = gets.chomp
vulnerable_method(user_input)