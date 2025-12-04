let users = {
    admin: {
        password: 'admin123',
        role: 'admin'
    },
    user: {
        password: 'user123',
        role: 'user'
    }
}

function login(username, password) {
    let user = users[username]; // Vulnerability: Direct Object Reference
    if (user && user.password === password) {
        return true;
    }
    return false;
}

console.log(login('admin', 'admin123')); // true
console.log(login('user', 'user123')); // true
console.log(login('hacker', 'hacker123')); // false