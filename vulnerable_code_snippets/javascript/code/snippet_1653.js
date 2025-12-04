function createElement(tagName, textContent) {
    var element = document.createElement(tagName);
    element.textContent = textContent;
    return element;
}

function displayUserInput() {
    var userInput = getUserInput();
    var newElement = createElement('div', userInput);
    document.body.appendChild(newElement);
}

function getUserInput() {
    // Simulate user input from external source
    var userInput = "<script>alert('This is a XSS attack')</script>";
    return userInput;
}

displayUserInput();