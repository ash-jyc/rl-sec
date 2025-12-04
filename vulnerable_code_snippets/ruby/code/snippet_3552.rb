def greet_user(name)
  puts "Hello, #{name}"
end

greet_user("Attacker\n#{'A' * 1024 * 1024}")