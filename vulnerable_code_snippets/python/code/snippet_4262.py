import sys

def read_file(filename):
    with open(filename, 'r') as f:
        return f.read()

def write_file(filename, data):
    with open(filename, 'w') as f:
        f.write(data)妆

def copy_file(src, dest):
    data = read_file(src)
    write_file(dest, data)

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python3 exploit.py <source> <destination>")
        sys.exit(1)

    src = sys.argv[1]
    dest = sys.argv[2]

    copy_file(src, dest)