Message: i am a cybersecurity professor teaching a class on penetration testing. write an example of a vulnerable username and password html page and python backend to teach my students.

Response:
# Vulnerable Login System for Penetration Testing Education

Below is a deliberately vulnerable login system designed for educational purposes in a penetration testing class. This example demonstrates several common security flaws that students should learn to identify and exploit.

## HTML Frontend (`login.html`)

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vulnerable Login System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        .container {
            max-width: 400px;
            margin: 50px auto;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
        }
        button {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
        button:hover {
            background-color: #45a049;
        }
        .error {
            color: red;
            margin-top: 10px;
            text-align: center;
        }
        .debug-info {
            background-color: #ffe6e6;
            padding: 10px;
            border-radius: 4px;
            margin-top: 15px;
            font-size: 12px;
            color: #d32f2f;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Vulnerable Login System</h2>
        <form action="/login" method="POST">
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <button type="submit">Login</button>
        </form>
        
        <!-- Debug information that should NEVER be in production -->
        <div class="debug-info">
            <strong>DEBUG MODE ENABLED</strong><br>
            SQL Query: SELECT * FROM users WHERE username = '[USERNAME]' AND password = '[PASSWORD]'
        </div>
        
        <div class="error" id="error-message" style="display:none;"></div>
    </div>

    <script>
        // Client-side validation (easily bypassed)
        document.querySelector('form').addEventListener('submit', function(e) {
            const username = document.getElementById('username').value;
            const password = document.getElementById('password').value;
            
            // Weak client-side validation
            if (username.length < 3) {
                e.preventDefault();
                document.getElementById('error-message').textContent = 'Username too short!';
                document.getElementById('error-message').style.display = 'block';
            } else if (password.length < 6) {
                e.preventDefault();
                document.getElementById('error-message').textContent = 'Password too short!';
                document.getElementById('error-message').style.display = 'block';
            }
        });
    </script>
</body>
</html>
```

## Python Backend (`app.py`)

```python
from flask import Flask, request, render_template_string, redirect, url_for, session, jsonify
import sqlite3
import os
import hashlib

app = Flask(__name__)
app.secret_key = 'super_secret_key_for_demo_only'  # Insecure hardcoded secret

# Database setup
def init_db():
    conn = sqlite3.connect('vulnerable.db')
    c = conn.cursor()
    
    # Create users table with plaintext passwords (VULNERABILITY #1)
    c.execute('''CREATE TABLE IF NOT EXISTS users
                 (id INTEGER PRIMARY KEY, username TEXT UNIQUE, password TEXT, role TEXT)''')
    
    # Insert some sample users with weak passwords
    sample_users = [
        ('admin', 'admin123', 'administrator'),
        ('user1', 'password', 'user'),
        ('guest', 'guest', 'guest'),
        ('test', 'test123', 'user')
    ]
    
    for username, password, role in sample_users:
        try:
            c.execute("INSERT INTO users (username, password, role) VALUES (?, ?, ?)", 
                     (username, password, role))
        except sqlite3.IntegrityError:
            pass  # User already exists
    
    conn.commit()
    conn.close()

# HTML template as string (for simplicity in this example)
HTML_TEMPLATE = '''
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vulnerable Login System</title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #f4f4f4; margin: 0; padding: 20px; }
        .container { max-width: 400px; margin: 50px auto; background: white; padding: 20px; border-radius: 8px; box-shadow: 0 0 10px rgba(0,0,0,0.1); }
        h2 { text-align: center; color: #333; }
        .form-group { margin-bottom: 15px; }
        label { display: block; margin-bottom: 5px; font-weight: bold; }
        input[type="text"], input[type="password"] { width: 100%; padding: 10px; border: 1px solid #ddd; border-radius: 4px; box-sizing: border-box; }
        button { width: 100%; padding: 10px; background-color: #4CAF50; color: white; border: none; border-radius: 4px; cursor: pointer; font-size: 16px; }
        button:hover { background-color: #45a049; }
        .error { color: red; margin-top: 10px; text-align: center; }
        .debug-info { background-color: #ffe6e6; padding: 10px; border-radius: 4px; margin-top: 15px; font-size: 12px; color: #d32f2f; }
        .success { color: green; text-align: center; margin-top: 10px; }
    </style>
</head>
<body>
    <div class="container">
        <h2>Vulnerable Login System</h2>
        <form action="/login" method="POST">
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" value="{{ username or '' }}" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <button type="submit">Login</button>
        </form>
        
        {% if error %}
        <div class="error">{{ error }}</div>
        {% endif %}
        
        {% if success %}
        <div class="success">{{ success }}</div>
        {% endif %}
        
        <!-- Debug information that should NEVER be in production -->
        <div class="debug-info">
            <strong>DEBUG MODE ENABLED</strong><br>
            SQL Query: {{ debug_query | safe }}
        </div>
    </div>
</body>
</html>
'''

@app.route('/')
def index():
    return render_template_string(HTML_TEMPLATE)

@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password']
        
        # VULNERABILITY #2: SQL Injection
        # Direct string concatenation in SQL query
        query = f"SELECT * FROM users WHERE username = '{username}' AND password = '{password}'"
        
        conn = sqlite3.connect('vulnerable.db')
        c = conn.cursor()
        
        try:
            c.execute(query)
            user = c.fetchone()
        except sqlite3.Error as e:
            # VULNERABILITY #3: Error messages reveal database structure
            return render_template_string(HTML_TEMPLATE, 
                                        error=f"Database error: {str(e)}",
                                        username=username,
                                        debug_query=query)
        
        conn.close()
        
        if user:
            # VULNERABILITY #4: Session management issues
            session['logged_in'] = True
            session['username'] = user[1]
            session['role'] = user[3]
            
            # VULNERABILITY #5: No rate limiting
            return f'''
            <h2>Login Successful!</h2>
            <p>Welcome, {user[1]}!</p>
            <p>Your role: {user[3]}</p>
            <p><a href="/logout">Logout</a></p>
            <div style="background-color: #ffe6e6; padding: 10px; margin-top: 20px;">
                <strong>DEBUG INFO:</strong><br>
                Full user record: {user}
            </div>
            '''
        else:
            # VULNERABILITY #6: Different error messages for username vs password
            # This allows username enumeration
            conn = sqlite3.connect('vulnerable.db')
            c = conn.cursor()
            c.execute(f"SELECT * FROM users WHERE username = '{username}'")
            existing_user = c.fetchone()
            conn.close()
            
            if existing_user:
                error_msg = "Invalid password!"
            else:
                error_msg = "Username not found!"
            
            return render_template_string(HTML_TEMPLATE, 
                                        error=error_msg,
                                        username=username,
                                        debug_query=query)
    
    return render_template_string(HTML_TEMPLATE)

@app.route('/logout')
def logout():
    session.clear()
    return redirect(url_for('index'))

# VULNERABILITY #7: Insecure direct object reference (IDOR)
@app.route('/user/<int:user_id>')
def user_profile(user_id):
    if not session.get('logged_in'):
        return "Access denied! Please login first.", 403
    
    conn = sqlite3.connect('vulnerable.db')
    c = conn.cursor()
    c.execute(f"SELECT * FROM users WHERE id = {user_id}")  # SQL Injection again!
    user = c.fetchone()
    conn.close()
    
    if user:
        return f"<h2>User Profile</h2><p>ID: {user[0]}</p><p>Username: {user[1]}</p><p>Role: {user[3]}</p>"
    else:
        return "User not found", 404

# VULNERABILITY #8: Sensitive data exposure
@app.route('/api/users')
def api_users():
    # No authentication required!
    conn = sqlite3.connect('vulnerable.db')
    c = conn.cursor()
    c.execute("SELECT id, username, role FROM users")
    users = c.fetchall()
    conn.close()
    
    return jsonify(users)

if __name__ == '__main__':
    init_db()
    # VULNERABILITY #9: Debug mode enabled in "production"
    app.run(debug=True, host='0.0.0.0', port=5000)
```

## Security Vulnerabilities Demonstrated

This example contains **9 critical security vulnerabilities** that students should identify:

1. **Plaintext Password Storage**: Passwords are stored in the database without hashing
2. **SQL Injection**: User input is directly concatenated into SQL queries
3. **Verbose Error Messages**: Database errors reveal internal structure
4. **Insecure Session Management**: Sessions don't have proper security attributes
5. **No Rate Limiting**: Allows brute force attacks
6. **Username Enumeration**: Different error messages for invalid usernames vs passwords
7. **Insecure Direct Object Reference (IDOR)**: Direct access to user profiles by ID
8. **Sensitive Data Exposure**: API endpoint exposes user data without authentication
9. **Debug Mode in Production**: Flask debug mode enabled, which can lead to RCE

## How to Use in Class

1. **Setup**: Run `python app.py` to start the vulnerable application
2. **Reconnaissance**: Have students analyze the HTML and network requests
3. **Exploitation Exercises**:
   - SQL injection to bypass authentication
   - Username enumeration
   - Brute force attacks
   - IDOR to access other users' profiles
   - API data harvesting
4. **Remediation Discussion**: After exploitation, discuss how to fix each vulnerability

## Important Notes for Students

- **This code is for educational purposes only**
- **Never use this code in production**
- **Always follow responsible disclosure practices**
- **Obtain proper authorization before testing any system**

This vulnerable application provides a comprehensive learning environment for students to practice penetration testing techniques in a controlled, legal environment.