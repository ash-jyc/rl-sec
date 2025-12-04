import sqlite3

def get_user(username):
    conn = sqlite3.connect('mydatabase.db')
    cursor = conn.cursor()
    query = "SELECT * FROM users WHERE username = '" + username + "'"
    cursor.execute(query)
    user = cursor.fetchone()
    return user

print(get_user("admin' OR '1'='1'--");