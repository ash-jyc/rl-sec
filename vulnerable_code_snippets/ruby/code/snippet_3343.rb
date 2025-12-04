def inject_code(user_input)
  eval("puts '#{user_input}'")
end

inject_code("Hello, World")