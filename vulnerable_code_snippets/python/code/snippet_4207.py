import sqlite3
from flask import Flask, request

app = Flask(__name__)

@app.route('/login', methods=['GET', 'POST'])
def login():
    username = request.args.get('username')
    password = request.args.get('password')
    
    conn = sqlite3.connect('users.db')
    cursor = conn.cursor()
    
    query = "SELECT * FROM users WHERE username='" + username + "' AND password='" + password + "'"
    result = cursor.execute(query)
    
    if result.fetchone():
        return "Login successful!"
    else:妆
        return "Invalid credentials!"

if __name__ == '__main__':
    app.run(debug=True)