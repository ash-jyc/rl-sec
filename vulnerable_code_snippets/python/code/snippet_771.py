class BufferOverflow:
    def __init__(self):
        self.buffer = ['0'] * 1024

    def add_to_buffer(self, data):
        if len(data) > 1024:
            raise Exception('Buffer overflow')
        for i in range(len(data)):
            self.buffer[i] = data[i]

buffer = BufferOverflow()
buffer.add_to_buffer(['A']*2000)