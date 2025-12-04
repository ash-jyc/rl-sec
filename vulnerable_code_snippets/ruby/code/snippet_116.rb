def vulnerable_method(input)
  regex = /^#{input}$/
  # some other code that uses the regex
end

vulnerable_method("(a+)+$")