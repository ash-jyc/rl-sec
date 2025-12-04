import time

def check_password(password):
    correct_password = "correct_password"
    if len(password) != len(correct_password):
        return False
    for p, c in zip(password, correct_password):
        if p != c:
            return False
        if ord(p) > ord(c):
            time.sleep(0.1)
    return True

# Testing the function
start = time.time()
print(check_password("incorrect_password"))  # Should print False
end = time.time()
print("Time taken: ", end - start)

start = time.time()
print(check_password("correct_password"))  # Should print True
end = time.time()lowing