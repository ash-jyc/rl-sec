let users = {
    1: {name: 'John', role: 'admin'},
    2: {name: 'Jane', role: 'user'}
};

function getUser(id) {
    return users[id];
}

function updateUser(id, newData) {
    // Vulnerability: Direct Object Reference
    let user = getUser(id);
    if (user.role === 'admin') {
        throw new Error('Admins cannot be updated');
    }
    Object.assign(user, newData);
}

// Unauthorized access or modification of data
updateUser(1, {name: 'Hacker', role: 'admin'});
console.log(getUser(1));  // Expected: {name: 'John', role: 'admin'}, Actual: {name: 'Hacker', role: 'admin'}