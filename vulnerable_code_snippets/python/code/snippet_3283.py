import struct

def unpack_data(data):
    try:
        return struct.unpack('L', data)
    except struct.error:
        print("Invalid data")

# Vulnerable usage
data = b'\x01\x02\x03\x04\x05\x06\x07\x08'  # 8 bytes of data
print(unpack_data(data))

# Exploit the vulnerability
exploit_data = b'\x01\x02\x03\x04\x05\x06\x07\x08\x09\x0A\x0B\x0C\x0D\x0E\x0F'  # 16 bytes of data
print(unpack_data(exploit_data))