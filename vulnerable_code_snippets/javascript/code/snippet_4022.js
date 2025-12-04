let userData = {
    name: "John Doe",
    age: 30,
    secret: "This is a secret key"
};

function getUserData(key) {
    return userData[key];
}

console.log(getUserData("secret"));