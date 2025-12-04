function processUserInput(userInput) {
    let processedInput = '<p>' + userInput + '</p>';
    document.write(processedInput);
}

let userInput = prompt("Enter some text");
processUserInput(userInput);