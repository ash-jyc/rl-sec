import os

def read_file(filename):
    with open(filename, 'r') as f:
        for line in f:
            print(line)

def write_file(filename, content):
    with open(filename, 'w') as f:
        f.write(content)

def main():
    filename = 'large_file.txt'
    content = 'a' * 1024 * 1024 * 1024 * 1024  # 1GB data
    write_file(filename, content)
    read_file(filename)

if __name__ == "__main__":
    main()