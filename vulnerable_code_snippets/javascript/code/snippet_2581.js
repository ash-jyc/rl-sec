function vulnerableFunction(userInput) {
    let div = document.createElement('div');
    div.innerHTML = userInput;
    document.body.appendChild(div);
}

let userInput = location.hash.substring(1);
vulnerableFunction(userInput);