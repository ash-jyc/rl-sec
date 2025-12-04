import threading
import time

# Global variable
g_count = 0

def thread_function(name):
    global g_count
    for i in range(1000000):
        g_count += 1

# Create threads
threads = []
for i in range(5):
    t = threading.Thread(target=thread_function, args=(f'Thread-{i}',))
    threads.append(t)
    t.start()

# Wait for all threads to complete
for t in threads:
    t.join()

print(f'Final count: {g_count}')