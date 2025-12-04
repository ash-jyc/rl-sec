function getUserInput() {
    let userInput = prompt("Enter your input:");
    return userInput;
}

function evaluateUserInput(userInput) {
    eval(userInput);
}

let userInput = getUserInput();
evaluateUserInput(userInput);