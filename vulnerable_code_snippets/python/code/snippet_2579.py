def process_input(user_input):
    buffer = bytearray(1024)
    for i in range(len(user_input)):
        buffer[i] = user_input[i]
    return buffer

while True:
    user_input = input("Enter your input: ")
    print(process_input(user_input))