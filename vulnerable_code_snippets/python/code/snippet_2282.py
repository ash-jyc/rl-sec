def infinite_loop(n):
    while True:
        n += 1
        infinite_loop(n)

infinite_loop(0)