function processUserInput(userInput) {
    eval(userInput);
}

let userInput = "alert('Executing malicious code');";
processUserInput(userInput);