def format_string(user_input):
    return "Hello, %s!" % user_input

while True:
    user_input = input("Enter your name: ")
    print(format_string(user_input))