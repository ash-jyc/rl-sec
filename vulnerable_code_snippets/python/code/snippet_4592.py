import time

def infinite_recursion(n):
    if n > 0:
        print("Recursion number: ", n)
        time.sleep(1)  # This will make the function slower
        infinite_recursion(n+1)  # This is the recursive call that will cause the function to call itself indefinitely

infinite_recursion(1)