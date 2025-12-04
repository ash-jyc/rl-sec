import hmac
import time
import os
from hashlib import sha256

def insecure_compare(a, b):
    if len(a) != len(b):
        return False
    for x, y in zip(a, b):
        time.sleep(0.001)  # Simulate one microsecond delay
        if x != y:
            return False
    return True

message = os.urandom(16)
key = os.urandom(16)
digest_maker = hmac.new(key, message, sha256)
server_mac = digest_maker.digest()

client_mac = os.urandom(32)
while not insecure_compare(client_mac, server_mac):
    client_mac = os.urandom(32)