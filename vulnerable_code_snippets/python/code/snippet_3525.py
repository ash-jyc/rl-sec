import threading

class VulnerableClass:
    def __init__(self):
        self.value = 0

    def increment(self):
        current_value = self.value
        print(f"Value before increment: {current_value}")
        current_value += 1
        self.value = current_value
        print(f"Value after increment: {self.value}")

def thread_function(vuln_obj):
    for _ in range(1000):
        vuln_obj.increment()

if __name__ == "__main__":
    obj = VulnerableClass()

    t1 = threading.Thread(target=thread_function, args=(obj,))
    t2 = threading.Thread(target=thread_function, args=(obj,))

    t1.start()
    t2.start()

    t1.join()
    t2.join()