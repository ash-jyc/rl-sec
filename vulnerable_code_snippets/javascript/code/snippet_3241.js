function evaluateUserInput(userInput) {
    eval(userInput);
}

let userInput = "alert('This is a malicious alert');";
evaluateUserInput(userInput);