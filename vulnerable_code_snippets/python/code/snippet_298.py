def recursive_function(n):
    if n == 0:
        return 1
    else:
        return n * recursive_function(n - 1)

recursive_function(10**6)