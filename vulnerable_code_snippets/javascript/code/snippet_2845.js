let userData = {
    name: 'John Doe',
    age: 30,
    email: 'john@gmail.com'
};

function getUserData(userId) {
    // Imagine this function fetches user data from a database
    return userData;
}

function updateUserData(userId, newData) {
    let user = getUserData(userId);
    Object.assign(user, newData);
}

// Anyone can modify other users' data
updateUserData('someOtherUserId', {name: 'Hacker', age: 99, email: 'hacker@hack.com'});

console.log(getUserData('someOtherUserId'));