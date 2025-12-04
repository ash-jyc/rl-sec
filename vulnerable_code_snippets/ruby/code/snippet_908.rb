def dangerous_method(user_input)
  eval(user_input)
end

def unsafe_code_execution
  puts "Enter some Ruby code:"
  user_input = gets.chomp
  dangerous_method(user_input)
end

unsafe_code_execution