def validate_input(input)
  if input =~ /^\d{10}$/
    puts "Valid Input"
  else
    puts "Invalid Input"
  end
end

# Testing with valid input
validate_input("1234567890") # Valid Input

# Testing with invalid input
validate_input("12345678901234567890") # Invalid Input