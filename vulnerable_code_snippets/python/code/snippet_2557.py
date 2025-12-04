def vulnerable_function(user_input):
    buffer = bytearray(1024)
    for i in range(len(user_input)):
        buffer[i] = user_input[i]
    return buffer

user_input = input("Enter your input: ")
vulnerable_function(user_input)