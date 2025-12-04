function evaluateUserInput(userInput) {
    var result = eval(userInput);
    console.log(result);
}

var userInput = "alert('This is an arbitrary code execution vulnerability')";
evaluateUserInput(userInput);