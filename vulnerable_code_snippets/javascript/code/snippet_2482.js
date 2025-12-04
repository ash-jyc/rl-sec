function sanitizeInput(input) {
    // This is a simple sanitization function. In real world scenario, this would be much more complex.
    return input.replace(/<|>/g, '');
}

let userInput = "alert('This is an alert box');";
userInput = sanitizeInput(userInput);

eval(userInput);