function createUser(userData) {
    let user = Object.create(null);
    for (let key in userData) {
        user[key] = userData[key];
    }
    return user;
}

let userData = {
    "__proto__": {
        "isAdmin": true
    },
    "username": "victim"
};

let user = createUser(userData);
console.log(user.isAdmin); // true