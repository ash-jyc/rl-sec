import ctypes

def create_string(size):
    return b"A" * size

def overflow_buffer():
    data = create_string(1024)
    data_address = id(data)
    overflow = create_string(1024)
    overflow_address = id(overflow)
    print("Data address: ", data_address)
    print("Overflow address: ", overflow_address)

if __name__ == "__main__":
    overflow_buffer()