def overflow_buffer(data):
    buffer = bytearray(10)
    for i in range(len(data)):
        buffer[i] = data[i]
    return buffer

data = bytearray(20)
for i in range(20):
    data[i] = 0x41

print(overflow_buffer(data))