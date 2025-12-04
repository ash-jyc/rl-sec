def format_string(user_input):
    return "Your input was: %s" % user_input

user_input = "A" * 10000000
print(format_string(user_input))