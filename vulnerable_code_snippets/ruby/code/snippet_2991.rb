def vulnerable_method(input)
  regex = Regexp.new(input)
  # ...
end

vulnerable_method("(a+)+$")