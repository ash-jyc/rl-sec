def create_user(username, password)
  # Assume we're using a hypothetical User model
  User.create(username: username, password: password)
end

def login(username, password)
  # Assume we're using a hypothetical User model
  user = User.find_by(username: username)
  if user && user.password == password
    puts "Login successful!"
  else
    puts "Incorrect username or password."
  end
end

# This is where the vulnerability lies
def execute_user_input(input)
  eval(input)
end

input = "puts 'Enter your username:'; username = gets.chomp; puts 'Enter your password:'; password = gets.chomp; create_user(username, password)"
execute_user_input(input)

input = "puts 'Enter your username:'; username = gets.chomp; puts 'Enter your password:'; password = gets.chomp; login(username, password)"
execute_user_input(input)