import threading

class Counter:
    def __init__(self):
        self.value = 0

def increment(counter):
    for _ in range(100000):
        counter.value += 1

def decrement(counter):
    for _ in range(100000):
        counter.value -= 1

counter = Counter()
t1 = threading.Thread(target=increment, args=(counter,))
t2 = threading.Thread(target=decrement, args=(counter,))

t1.start()
t2.start()

t1.join()
t2.join()

print(counter.value)