function createUser(username, password) {
    // Assume this function is used to create a new user.
    // However, it does not check if the username or password contains any potentially harmful HTML tags.
    let user = {
        username: username,
        password: password
    };
    // Store the user object into the database.
    // In a real-world application, this would be a call to a database API.
    // For simplicity, we'll just store it in a variable.
    let db = {};
    db[username] = user;
}

// This is how an attacker could exploit the above function.
let script = `<script>alert('XSS Attack!!')</script>`;
createUser(script, script);