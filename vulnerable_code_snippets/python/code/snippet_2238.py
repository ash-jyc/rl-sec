import threading
import time

def worker():
    print("Thread Started")
    time.sleep(10)  # Simulate some work
    print("Thread Finished")

print("Main Thread Started")
t = threading.Thread(target=worker)
t.start()
time.sleep(5)  # Wait for the thread to start
print("Main Thread Finished")