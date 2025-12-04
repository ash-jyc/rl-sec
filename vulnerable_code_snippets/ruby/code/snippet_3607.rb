def read_file(filename)
  File.open(filename, "r") do |file|
    contents = file.read
  end
  return contents
end

puts "Enter a filename:"
filename = gets.chomp
contents = read_file(filename)
puts contents