function displayUserInput(input) {
    var div = document.createElement('div');
    div.innerHTML = input;
    document.body.appendChild(div);
}

let userInput = prompt("Enter some text");
displayUserInput(userInput);