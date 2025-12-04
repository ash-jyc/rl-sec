def create_user(username, password)
  system("echo '#{username}' > users.txt")
  system("echo '#{password}' >> users.txt")
end

create_user("John Doe", "ThisIsAVeryLongPasswordThatExceedsTheBufferSizeAndCausesABufferOverflow")