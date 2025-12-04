function getUser(userId) {
    let user = { id: 123, name: 'John Doe' };
    if (user.id == userId) {
        return user;
    } else {
        return null;
    }
}

let userId = '123'; // This should be a number but is a string
let user = getUser(userId);
console.log(user);