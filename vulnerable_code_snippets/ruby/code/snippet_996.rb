def vulnerable_method(input)
  regex = /(a+)+$/
  return regex.match?(input)
end

# This method will match any string that contains one or more 'a' characters.
# However, if the input string is very long, this can cause performance issues.
# If an attacker provides a very long string of 'a' characters, this could potentially lead to a ReDoS attack.