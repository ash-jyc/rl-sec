def read_file(filename):
    with open(filename, 'r') as file:
        content = file.read()
    return content

print(read_file('large_file.txt'))