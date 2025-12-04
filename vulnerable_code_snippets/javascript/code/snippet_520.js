function sanitizeInput(input){
    // This function is supposed to sanitize the input but it's not doing it properly
    return input;
}

function processUserInput(userInput){
    let sanitizedInput = sanitizeInput(userInput);
    document.getElementById('result').innerHTML = sanitizedInput;
}

let userInput = location.hash.substring(1);
processUserInput(userInput);