require 'cgi'

def run_command(user_input)
  cleaned_input = CGI.escape(user_input) # This line escapes special characters in the user input
  system("echo #{cleaned_input} > output.txt") # This line runs a system command using the user input
end

run_command("Some user input; malicious command here")