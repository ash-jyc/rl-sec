$global_variable = []

def add_to_global(value)
  $global_variable << value
end

while true
  add_to_global("a" * 1024 * 1024) # Adds 1MB of data to the global variable
  sleep(1) # Wait for next iteration
end