function unsafeFunction(userInput) {
    eval(userInput);
}

unsafeFunction("alert('This is an alert from eval');");