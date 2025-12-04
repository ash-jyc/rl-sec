require 'uri'

def vulnerable_function(input)
  URI.unescape(input)
end

while true
  puts "Enter your input:"
  user_input = gets.chomp
  begin
    puts "Your input after unescaping: #{vulnerable_function(user_input)}"
  rescue URI::InvalidURIError => e
    puts "Invalid input!"
  end
end