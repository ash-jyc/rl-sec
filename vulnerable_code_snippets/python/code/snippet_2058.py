import threading
import time

def worker(num):
    """thread worker function"""
    print('Worker: %s' % num)
    time.sleep(2)
    return

threads = []
for i in range(5):
    t = threading.Thread(target=worker, args=(i,))
    threads.append(t)
    t.start()