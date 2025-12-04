function processUserInput(userInput) {
    var div = document.createElement('div');
    div.innerHTML = userInput;
    document.body.appendChild(div);
}

// This function is vulnerable to XSS attacks because it directly inserts user input into the DOM without proper sanitization.
// For instance, if a user were to input "<script>alert('XSS Attack')</script>", this would execute the script when the page loads.