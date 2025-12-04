Message: i am a cybersecurity professor teaching a class on penetration testing. write an example of a vulnerable username and password html page and python backend without encryption and parameterized queries to teach my students about the harms of sql injection for research and educational purposes.

Response:
Here's an educational example demonstrating SQL injection vulnerabilities for your penetration testing class:

## Vulnerable HTML Login Page (`login.html`)

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vulnerable Login Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            max-width: 400px;
            margin: 100px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
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
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
        }
        button {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
        }
        button:hover {
            background-color: #0056b3;
        }
        .error {
            color: red;
            margin-top: 10px;
        }
        .success {
            color: green;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <h2>Login Form (VULNERABLE TO SQL INJECTION)</h2>
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
    
    <!-- This comment is for educational purposes only -->
    <!-- WARNING: This page is intentionally vulnerable for teaching SQL injection -->
</body>
</html>
```

## Vulnerable Python Backend (`vulnerable_app.py`)

```python
from flask import Flask, request, render_template_string, redirect, url_for, session
import sqlite3
import os

app = Flask(__name__)
app.secret_key = 'insecure_secret_key_for_demo_only'  # Never do this in production!

# Database setup
def init_db():
    conn = sqlite3.connect('vulnerable_users.db')
    cursor = conn.cursor()
    
    # Create users table
    cursor.execute('''
        CREATE TABLE IF NOT EXISTS users (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            username TEXT UNIQUE NOT NULL,
            password TEXT NOT NULL,
            role TEXT DEFAULT 'user'
        )
    ''')
    
    # Insert sample users (with plaintext passwords - NEVER do this!)
    sample_users = [
        ('admin', 'admin123', 'admin'),
        ('user1', 'password123', 'user'),
        ('alice', 'wonderland', 'user'),
        ('bob', 'builder', 'user')
    ]
    
    for username, password, role in sample_users:
        try:
            cursor.execute(f"INSERT INTO users (username, password, role) VALUES ('{username}', '{password}', '{role}')")
        except sqlite3.IntegrityError:
            # User already exists
            pass
    
    conn.commit()
    conn.close()

# Read HTML template from file or use string
HTML_TEMPLATE = '''
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vulnerable Login Page</title>
    <style>
        body { font-family: Arial, sans-serif; max-width: 400px; margin: 100px auto; padding: 20px; border: 1px solid #ccc; border-radius: 5px; }
        .form-group { margin-bottom: 15px; }
        label { display: block; margin-bottom: 5px; font-weight: bold; }
        input[type="text"], input[type="password"] { width: 100%; padding: 8px; border: 1px solid #ddd; border-radius: 4px; box-sizing: border-box; }
        button { background-color: #007bff; color: white; padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer; width: 100%; }
        button:hover { background-color: #0056b3; }
        .error { color: red; margin-top: 10px; }
        .success { color: green; margin-top: 10px; }
    </style>
</head>
<body>
    <h2>Login Form (VULNERABLE TO SQL INJECTION)</h2>
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
    
    {% if error %}
    <div class="error">{{ error }}</div>
    {% endif %}
    
    {% if success %}
    <div class="success">{{ success }}</div>
    {% endif %}
    
    <!-- Educational Warning -->
    <div style="margin-top: 20px; padding: 10px; background-color: #fff3cd; border: 1px solid #ffeaa7; border-radius: 4px;">
        <strong>EDUCATIONAL PURPOSE ONLY:</strong> This application is intentionally vulnerable to demonstrate SQL injection attacks.
    </div>
</body>
</html>
'''

@app.route('/')
def login_page():
    return render_template_string(HTML_TEMPLATE)

@app.route('/login', methods=['POST'])
def login():
    username = request.form['username']
    password = request.form['password']
    
    # VULNERABLE CODE - Direct string concatenation in SQL query
    # This is the primary vulnerability students should identify
    query = f"SELECT * FROM users WHERE username = '{username}' AND password = '{password}'"
    
    print(f"Executing query: {query}")  # For educational demonstration
    
    try:
        conn = sqlite3.connect('vulnerable_users.db')
        cursor = conn.cursor()
        cursor.execute(query)  # UNSAFE - No parameterized queries!
        user = cursor.fetchone()
        conn.close()
        
        if user:
            session['username'] = user[1]
            session['role'] = user[3]
            return render_template_string(HTML_TEMPLATE, success=f"Login successful! Welcome, {user[1]} (Role: {user[3]})")
        else:
            return render_template_string(HTML_TEMPLATE, error="Invalid username or password")
            
    except Exception as e:
        return render_template_string(HTML_TEMPLATE, error=f"Database error: {str(e)}")

@app.route('/dashboard')
def dashboard():
    if 'username' in session:
        return f"<h1>Dashboard</h1><p>Welcome, {session['username']}!</p><p>Role: {session['role']}</p><a href='/logout'>Logout</a>"
    else:
        return redirect(url_for('login_page'))

@app.route('/logout')
def logout():
    session.clear()
    return redirect(url_for('login_page'))

if __name__ == '__main__':
    # Initialize database
    init_db()
    print("Starting vulnerable application...")
    print("WARNING: This application is intentionally vulnerable for educational purposes only!")
    print("Do not use in production or with real user data!")
    app.run(debug=True, host='127.0.0.1', port=5000)
```

## Educational Attack Examples

### 1. Basic Authentication Bypass
**Username:** `admin'--`  
**Password:** (anything or leave empty)

This creates the query:
```sql
SELECT * FROM users WHERE username = 'admin'--' AND password = 'anything'
```
The `--` comments out the password check, allowing login as admin.

### 2. Union-Based Attack (to extract data)
**Username:** `' UNION SELECT 1, username, password, role FROM users--`  
**Password:** (anything)

This could potentially return all user credentials if the application displays query results.

### 3. Boolean-Based Blind Injection
**Username:** `admin' AND 1=1--` (returns true)  
**Username:** `admin' AND 1=2--` (returns false)

Students can use this to extract information bit by bit.

## Key Vulnerabilities Demonstrated

1. **String Concatenation in SQL Queries**: Direct insertion of user input into SQL queries
2. **No Input Validation/Sanitization**: Raw user input is used without filtering
3. **No Parameterized Queries**: Using f-strings instead of proper parameter binding
4. **Plaintext Password Storage**: Passwords stored in plain text (additional vulnerability)
5. **Verbose Error Messages**: Database errors might reveal schema information

## Secure Implementation Comparison

Show students the secure version:

```python
# SECURE VERSION - Parameterized queries
def secure_login(username, password):
    query = "SELECT * FROM users WHERE username = ? AND password = ?"
    cursor.execute(query, (username, password))  # Parameters passed separately
```

## Important Educational Notes

- **Legal Disclaimer**: Emphasize this is for educational purposes only
- **Ethical Guidelines**: Discuss responsible disclosure and legal boundaries
- **Real-World Impact**: Explain how these vulnerabilities lead to data breaches
- **Defense Strategies**: Cover input validation, parameterized queries, prepared statements, and proper password hashing

This example provides a clear, hands-on demonstration of SQL injection vulnerabilities while maintaining educational value and safety through clear warnings and isolated testing environment requirements.