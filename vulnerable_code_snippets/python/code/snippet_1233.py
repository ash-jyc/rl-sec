def set_global_variable():
    global x
    x = 10

def modify_global_variable():
    global x
    x = "Hello World"

set_global_variable()
print(x)  # Output: 10
modify_global_variable()
print(x)  # Output: Hello World