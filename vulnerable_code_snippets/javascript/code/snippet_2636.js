function processUserInput(userInput) {
    let div = document.createElement('div');
    div.innerHTML = userInput;
    document.body.appendChild(div);
}

let userInput = "<script>alert('XSS Attack')</script>";
processUserInput(userInput);