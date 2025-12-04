function processUserInput(userInput) {
    let div = document.createElement('div');
    div.innerHTML = userInput;
    document.body.appendChild(div);
}

let userInput = window.location.hash.substring(1);
processUserInput(userInput);