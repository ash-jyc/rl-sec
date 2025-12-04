import sqlite3

def search_user(username):
    conn = sqlite3.connect('mydatabase.db')
    cursor = conn.cursor()
    query = "SELECT * FROM users WHERE username='{}'".format(username)
    cursor.execute(query)
    user = cursor.fetchone()
    return user

# Testing the function
print(search_user("test')) OR '1'='1";--"))