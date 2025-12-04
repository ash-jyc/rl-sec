function searchUser(userId) {
    let query = "SELECT * FROM users WHERE id=" + userId;
    // execute the query here
}

// User input
let userInput = prompt("Enter your user ID");
searchUser(userInput);