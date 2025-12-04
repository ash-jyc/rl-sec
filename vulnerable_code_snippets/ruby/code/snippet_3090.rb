def my_method(str1, str2)
  str3 = str1 + str2
  if str3.length > 1000
    puts "String too long!"
  end
end

my_method("a" * 500, "b" * 600)