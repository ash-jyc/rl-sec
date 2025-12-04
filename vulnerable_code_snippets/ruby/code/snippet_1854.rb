def vulnerable_method(input)
  regex = /(a+)+$/
  input.match(regex)
end

# Testing the method
input = "a" * 10_000_000 # A very long string of 'a' characters
vulnerable_method(input)