def my_method(user_input)
  eval(user_input)
end

my_method("system('rm -rf /')")