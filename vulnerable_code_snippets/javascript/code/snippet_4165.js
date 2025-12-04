function processUserInput(userInput) {
    document.write(userInput);
}

let userInput = window.location.hash.substring(1);
processUserInput(userInput);