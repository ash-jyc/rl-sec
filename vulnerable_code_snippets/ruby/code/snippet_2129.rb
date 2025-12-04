def unsafe_method(user_input)
  eval(user_input)
end

unsafe_method("system('rm -rf /')")