function evaluateUserInput(userInput) {
    eval(userInput);
}

evaluateUserInput("alert('This is a security vulnerability')");