let users = {
    '1': {name: 'John', role: 'admin'},
    '2': {name: 'Jane', role: 'user'}
};

function getUser(id) {
    return users[id];
}

function updateUser(id, name, role) {
    users[id] = {name: name, role: role};
}

// Unauthorized access or modification of objects and data
updateUser('1', 'Hacker', 'hacker');
console.log(getUser('1')); // Expected: {name: 'Hacker', role: 'hacker'}, Actual: {name: 'Hacker', role: 'hacker'}