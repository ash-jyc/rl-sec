require 'timeout'

def check_password(input)
  if input =~ /^[a-zA-Z0-9]{3,}$/
    puts "Password is strong"
  else
    puts "Password is weak"
  end
end

def attack_password(input)
  Timeout::timeout(5) do
    check_password(input + "1") while true
  end
rescue Timeout::Error
  puts "Attack stopped"
end

attack_password("a" * 100000 + "A")