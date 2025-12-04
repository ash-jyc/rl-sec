function processUserInput(userInput) {
    let processedInput = document.createElement('div');
    processedInput.textContent = userInput;
    document.body.appendChild(processedInput);
}

let userInput = '"><script>alert("XSS Attack")</script>';
processUserInput(userInput);