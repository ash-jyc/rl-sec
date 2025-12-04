def interpolate_string(user_input)
  /#{user_input}/ =~ "a"
end

interpolate_string("(?=a)a".gsub('a', 'a' * 50000))