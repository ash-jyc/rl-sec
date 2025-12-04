import logging

class User:
    def __init__(self, username, password):
        self.username = username
        self.password = password

def login(user):
    try:
        # Assume this function does something important
        pass
    except Exception as e:
        logging.error("An error occurred during login", exc_info=True)

def main():
    user = User('admin', 'password123')
    login(user)

if __name__ == "__main__":
    main()