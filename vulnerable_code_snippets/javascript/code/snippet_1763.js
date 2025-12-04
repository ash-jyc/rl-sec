function evaluateUserInput(input) {
    eval(input);
}

let userInput = "alert('This is a security vulnerability');";
evaluateUserInput(userInput);