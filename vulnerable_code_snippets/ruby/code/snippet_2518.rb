def unsafe_input(user_input)
  eval(user_input)
end

unsafe_input("puts 'Hello, World!'")