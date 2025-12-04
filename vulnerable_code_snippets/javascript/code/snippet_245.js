function unsafeFunction(userInput) {
    var sanitizedInput = sanitizeInput(userInput);
    eval(sanitizedInput);
}

function sanitizeInput(input) {
    // This is a very basic sanitization function. In a real-world scenario, you would need a more robust function.
    return input.replace(/[^a-zA-Z0-9]/g, '');
}

unsafeFunction('alert("Hello, World!");');