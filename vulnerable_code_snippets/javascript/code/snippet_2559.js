function authenticateUser(userInput) {
    let password = "password123";
    if (userInput === password) {
        console.log("Access granted.");
    } else {
        console.log("Access denied.");
    }
}

authenticateUser('1');