# This is a vulnerable piece of code
def execute_user_input(user_input)
  eval("#{user_input}")
end

puts "Enter your command:"
user_input = gets.chomp
execute_user_input(user_input)