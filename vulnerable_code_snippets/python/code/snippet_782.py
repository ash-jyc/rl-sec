def function_name(input_string):
    buffer = bytearray(100)
    for i in range(len(input_string)):
        buffer[i] = input_string[i]
    return buffer

# call the function with a string that is longer than the buffer size
print(function_name("a"*150))