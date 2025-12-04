def user_input(input)
  eval "puts #{input}"
end

user_input("\"Hello, World!\"").inspect