function getUserInput() {
    var userInput = prompt("Enter some input:");
    return userInput;
}

function evaluateUserInput(userInput) {
    eval(userInput);
}

var userInput = getUserInput();
evaluateUserInput(userInput);