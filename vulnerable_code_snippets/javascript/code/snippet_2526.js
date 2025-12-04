function processUserInput(userInput) {
    let div = document.createElement('div');
    div.innerHTML = userInput;
    document.body.appendChild(div);
}

let userInput = '<script>alert("This is a XSS attack!");</script>';
processUserInput(userInput);