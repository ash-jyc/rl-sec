function createUser(userName, userData) {
    let user = "<h1>" + userName + "</h1>";
    let data = "<p>" + userData + "</p>";
    return user + data;
}

let username = prompt("Enter your username:");
let userdata = prompt("Enter your data:");
document.write(createUser(username, userdata));