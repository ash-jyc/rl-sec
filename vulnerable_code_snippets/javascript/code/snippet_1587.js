function processInput(userInput) {
    var div = document.createElement('div');
    div.innerHTML = userInput;
    document.body.appendChild(div);
}

var userInput = "<script>alert('XSS Attack')</script>";
processInput(userInput);