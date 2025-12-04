def read_file(filename)
  File.open(filename, "r") do |file|
    contents = file.read
  end
end

def write_to_file(filename, data)
  File.open(filename, "w") do |file|
    file.write(data)
  end
end

# Vulnerable usage
filename = "secret.txt"
data = "sensitive information"
write_to_file(filename, data)
content = read_file(filename)
puts content