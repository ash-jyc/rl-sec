def vulnerable_function(user_input):
    buffer = bytearray(100)
    for i in range(len(user_input)):
        buffer[i] = user_input[i]
    return buffer

# Attacker controlled input
attacker_input = "A" * 200
print(vulnerable_function(attacker_input))