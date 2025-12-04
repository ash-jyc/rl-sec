def vulnerable_function(user_input):
    msg = "Hello, {0}!".format(user_input)
    print(msg)

vulnerable_function("Attacker")