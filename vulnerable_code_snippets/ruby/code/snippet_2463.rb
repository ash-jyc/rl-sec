def generate_string(size)
  str = ""
  size.times { str += "a" }
  str
end

# This will cause a buffer overflow because it's trying to allocate a large string
puts generate_string(10**6)