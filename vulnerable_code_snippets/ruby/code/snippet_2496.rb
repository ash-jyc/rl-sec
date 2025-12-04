def vulnerable_method(user_input)
  eval("puts #{user_input}")
end

vulnerable_method(gets.chomp)