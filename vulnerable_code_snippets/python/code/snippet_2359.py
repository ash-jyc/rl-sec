import struct

def format_string(user_input):
    return "User input: %s" % user_input

def main():
    user_input = input("Enter some text: ")
    formatted = format_string(user_input)
    print(formatted)

if __name__ == "__main__":
    main()