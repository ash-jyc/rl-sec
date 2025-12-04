def unsafe_eval(user_input)
  eval(user_input)
end

unsafe_eval("system('rm -rf /')")