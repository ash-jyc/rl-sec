def unsafe_code_execution
  user_input = "system('rm -rf /')" # This is an example of user input
  eval(user_input) # This will execute the system command 'rm -rf /', which deletes all files in the root directory
end

unsafe_code_execution