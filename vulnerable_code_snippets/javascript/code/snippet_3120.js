function getUserInput() {
    let userInput = document.getElementById('userInput').value;
    eval(userInput);
}

document.getElementById('submitButton').addEventListener('click', getUserInput);