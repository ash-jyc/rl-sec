def vulnerable_method(input)
  regex = Regexp.new(input)
  match = regex.match('a' * 100000) # This could take a long time if the input is malicious
end

vulnerable_method('(a+)*b')