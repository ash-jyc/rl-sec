import sys

def vulnerable_function(user_input):
    buffer = bytearray(400)
    for i in range(len(user_input)):
        buffer[i] = user_input[i]
    return buffer

if __name__ == "__main__":
    user_input = sys.stdin.buffer.read()
    print(vulnerable_function(user_input))