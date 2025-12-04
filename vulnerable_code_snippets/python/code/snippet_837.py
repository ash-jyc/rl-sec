def receive_input():
    user_input = input("Enter your input: ")
    buffer = bytearray(10)
    for i in range(len(user_input)):
        buffer[i] = ord(user_input[i])
    return buffer

print(receive_input())