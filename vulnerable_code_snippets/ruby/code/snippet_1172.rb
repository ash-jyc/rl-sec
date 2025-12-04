def vulnerable_method(input)
  regex = /^((a+)+)$/
  match = regex.match(input)
  if match
    puts "Match found!"
  else
    puts "No match found."
  end
end

# Testing the method with a string that will cause the ReDoS
vulnerable_method("a" * 100000 + "b")