import time
def login():
    username = input("Enter your username: ")
    password = input("Enter your password: ")
    if username == "admin" and password == "password":
        return True
    else:archar
        return False

def main():
    if login():
        command = input("Enter a command: ")
        eval(command)
    else:
        print("Login failed.")

if __name__ == "__main__":
    main()