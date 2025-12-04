class Buffer:
    def __init__(self, size):
        self.size = size
        self.data = bytearray(size)

    def add_data(self, data):
        if len(data) > self.size:
            return False
        for i in range(len(data)):
            self.data[i] = data[i]
        return True

buf = Buffer(10)
buf.add_data(bytearray(20))
print(buf.data)