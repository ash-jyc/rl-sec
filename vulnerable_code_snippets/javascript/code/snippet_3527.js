function getUserInput() {
    var userInput = document.getElementById('userInput').value;
    return userInput;
}

function displayUserInput() {
    var userInput = getUserInput();
    document.write(userInput);
}

displayUserInput();