function processUserInput(userInput) {
    var div = document.createElement('div');
    div.innerHTML = userInput;
    document.body.appendChild(div);
}

// Vulnerable usage
processUserInput("<img src='x' onerror='alert(\"XSS Attack\")'>");