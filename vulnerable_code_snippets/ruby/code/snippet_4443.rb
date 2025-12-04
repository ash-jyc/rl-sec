def vulnerable_method(input)
  regex = /^(([a-zA-Z0-9]+\.){16}[a-zA-Z0-9]+$/
  return regex.match?(input)
end

# Testing the method
puts vulnerable_method("a" * 100000 + ".com") # This will cause a ReDoS