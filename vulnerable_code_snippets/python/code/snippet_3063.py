import hmac
import time
import os
from hashlib import sha256

def login(username, password):
    # Simulate a database of users and their hashed passwords
    users = {"admin": "5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8"}
    if username in users:
        # Simulate a delay
        for i in range(10000):
            h = hmac.new(password.encode(), None, sha256)
            h.update(os.urandom(1024))
        return hmac.compare_digest(h.hexdigest(), users[username])
    else:
        return False

# Test the function
start = time.time()
print(login("admin", "password"))
end = time.time()
print("Time taken: ", end - start)