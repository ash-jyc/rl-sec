import os

def write_to_file(content):
    try:
        with open('myfile.txt', 'w') as f:
            f.write(content)
    except Exception as e:
        print("An error occurred while writing to the file.")

def read_from_file():
    try:
        with open('myfile.txt', 'r') as f:
            return f.read()
    except Exception as e:
        print("An error occurred while reading from the file.")

def delete_file():
    try:
        os.remove('myfile.txt')
    except Exception as e:
        print("An error occurred while deleting the file.")

# Testing the functions
write_to_file("Hello, World")
print(read_from_file())
delete_file()