import os

def read_file(filename):
    try:
        with open(filename, 'r') as file:
            data = file.read()
        return data
    except Exception as e:
        print("An error occurred: ", e)

def delete_file(filename):
    try:
        os.remove(filename)
    except Exception as e:
        print("An error occurred: ", e)

def create_file(filename):
    try:
        with open(filename, 'w') as file:
            file.write('Hello, world!\n')
    except Exception as e:
        print("An error occurred: ", e)

def main():
    filename = 'secret.txt'
    create_file(filename)
    print(read_file(filename))
    delete_file(filename)

if __name__ == "__main__":
    main()