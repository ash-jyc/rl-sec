import os

def read_file(filename):
    return open(filename, 'r').read()

def write_file(filename, content):
    open(filename, 'w').write(content)

def delete_file(filename):
    os.remove(filename)

def main():
    filename = 'test.txt'
    content = 'This is some content.'

    write_file(filename, content)
    print(read_file(filename))
    delete_file(filename)

if __name__ == "__main__":
    main()