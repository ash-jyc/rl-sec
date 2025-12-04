function dangerousFunction(userInput) {
    eval(userInput);
}

dangerousFunction("alert('This is a malicious script')");