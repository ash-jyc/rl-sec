def execute_command(user_input)
  system("echo #{user_input} > output.txt")
end

execute_command("malicious; rm -rf /")