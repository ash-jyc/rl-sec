import logging

class User:
    def __init__(self, username, password):
        self.username = username
        self.password = password

def authenticate_user(users, username, password):
    for user in users:
        if user.username == username and user.password == password:
            return True
    return False

def login():
    users = [User('admin', 'password')]
    username = input("Enter your username: ")
    password = input("Enter your password: ")
    
    try:
        if authenticate_user(users, username, password):
            print("Login successful")
        else:
            print("Invalid credentials")
    except Exception as e:
        logging.error("An error occurred: " + str(e))

login()