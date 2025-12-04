$global_variable = []

def add_to_global(item)
  $global_variable << item
end

def clear_global
  $global_variable = []
end

100000.times do |i|
  add_to_global(i)
  clear_global if i % 1000 == 0
end