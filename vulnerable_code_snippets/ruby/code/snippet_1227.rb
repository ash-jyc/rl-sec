def unsafe_function(user_input)
  eval(user_input)
end

def safe_function(user_input)
  begin
    eval(user_input)
  rescue SecurityError => e
    puts "Input contains potentially harmful code."
  end
end

puts "Enter some ruby code:"
user_input = gets.chomp

unsafe_function(user_input)
safe_function(user_input)