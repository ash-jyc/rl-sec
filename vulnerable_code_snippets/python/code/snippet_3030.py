class MemoryLeakClass:
    def __init__(self):
        self.data = []

    def add_data(self, data):
        self.data.append(data)

# Create a new instance of the class
memory_leak_instance = MemoryLeakClass()

# Add some data to the instance
for i in range(1000000):
    memory_leak_instance.add_data("Some data")

# The data list will keep growing even after we're done using the instance
# This is a memory leak because the data is still held in memory
# even though we no longer need it