function createElement(content) {
    var div = document.createElement('div');
    div.innerHTML = content; 
    document.body.appendChild(div);
}

function getUserInput() {
    var userInput = prompt("Enter some text:");
    createElement(userInput);
}

getUserInput();