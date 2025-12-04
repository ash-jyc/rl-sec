function createUser(username, password) {
    let user = '<p>Username: ' + username + '</p><p>Password: ' + password + '</p>';
    document.body.innerHTML += user;
}

let username = prompt("Enter your username");
let password = prompt("Enter your password");

createUser(username, password);