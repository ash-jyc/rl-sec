function processUserInput(userInput) {
    eval(userInput);
}

let userInput = "alert('This is a security vulnerability');";
processUserInput(userInput);