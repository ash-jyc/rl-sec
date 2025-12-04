def format_string(user_input):
    return "Hello, {}!".format(user_input)

while True:
    try:
        print(format_string(input("Enter your name: ")))
    except Exception as e:
        print("An error occurred: ", e)