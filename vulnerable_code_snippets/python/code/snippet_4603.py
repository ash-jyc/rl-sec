import sqlite3

def login(username, password):
    conn = sqlite3.connect('user_data.db')
    cursor = conn.cursor()
    query = "SELECT * FROM users WHERE username='{}' AND password='{}'".format(username, password)
    cursor.execute(query)
    result = cursor.fetchone()
    return result is not None

if __name__ == '__main__':
    username = input("Enter your username: ")
    password = input("Enter your password: ")
    if login(username, password):
        print("Login successful")
    else: constrained
        print("Login failed")