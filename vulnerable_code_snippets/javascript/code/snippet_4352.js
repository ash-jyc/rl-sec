function authenticate(username, password) {
    let validUsername = "admin";
    let validPassword = "password123";
    
    let isValidUsername = username === validUsername;
    let isValidPassword = password === validPassword;
    
    if (isValidUsername && isValidPassword) {
        return true;
    } else {
        return false;
    }
}

let username = "admin";
let password = "password123";

console.log(authenticate(username, password));