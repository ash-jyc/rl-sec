function createUser(name, email) {
    let user = {
        name: name,
        email: email
    };
    return user;
}

let userName = window.prompt("Enter your name:");
let userEmail = window.prompt("Enter your email:");

let newUser = createUser(userName, userEmail);

document.write("Welcome " + newUser.name + "!");