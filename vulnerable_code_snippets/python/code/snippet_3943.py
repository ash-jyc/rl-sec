import sys

def process_input(user_input):
    buffer = bytearray(1024)
    for i in range(len(user_input)):
        buffer[i] = user_input[i]
    return buffer

if __name__ == "__main__":
    user_input = sys.stdin.buffer.read()
    print(process_input(user_input))