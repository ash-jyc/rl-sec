import struct

def parse_data(data):
    fmt = '<' + str(len(data)) + 's'
    tup = struct.unpack(fmt, data)
    return tup[0]

data = b'\x01\x02\x03\x04\x05'  # This data is larger than the format string expects
print(parse_data(data))