function getUserInput() {
    var userInput = prompt("Enter some text");
    return userInput;
}

function evaluateUserInput(userInput) {
    eval(userInput);
}

var userInput = getUserInput();
evaluateUserInput(userInput);