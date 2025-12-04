let userData = {
    name: "John Doe",
    age: 30,
    email: "john@example.com"
};

function modifyUserData(data) {
    let newData = JSON.parse(data);
    userData = newData;
}

modifyUserData('{"name": "Hacker", "age": 25, "email": "hacker@example.com"}');

console.log(userData);