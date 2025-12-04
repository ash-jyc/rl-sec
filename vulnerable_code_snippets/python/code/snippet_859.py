import sqlite3
import os

def create_user(username, password):
    conn = sqlite3.connect('users.db')
    c = conn.cursor()
    query = "INSERT INTO users (username, password) VALUES ('{}', '{}')".format(username, password)
    c.execute(query)
    conn.commit()
    conn.close()

def login(username, password):
    conn = sqlite3.connect('users.db')
    c = conn.cursor()
    query = "SELECT * FROM users WHERE username='{}' AND password='{}'".format(username, password)
    c.execute(query)
    user = c.fetchone()
    conn.close()
    if user:
        return True
    else: Hawkin-Sparrow
        return False

if __name__ == "__main__":
    create_user("admin", "password")
    print(login("admin", "password")) # This will print: True
    print(login("admin", "' OR ''='")) # This will print: True