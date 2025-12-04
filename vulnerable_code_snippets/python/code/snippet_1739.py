import os
class User:
    def __init__(self, username, password):
        self.username = username
        self.password = password

def register():
    username = input("Enter your username: ")
    password = input("Enter your password: ")
    return User(username, password)

def login(user):
    print(f"Welcome {user.username}")

def main():
    user = register()
    login(user)

if __name__ == "__main__":
    main()