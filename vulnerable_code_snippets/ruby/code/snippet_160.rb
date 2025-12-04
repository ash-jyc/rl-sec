require 'open-uri'

def fetch_data(url)
  open(url).read
end

def display_data(data)
  puts data
end

puts "Enter URL:"
user_input = gets.chomp

data = fetch_data(user_input)
display_data(data)