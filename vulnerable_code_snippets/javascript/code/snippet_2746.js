function processUserInput(userInput) {
    return "<p>" + userInput + "</p>";
}

let userInput = "<script>alert('This is a malicious script')</script>";
document.write(processUserInput(userInput));