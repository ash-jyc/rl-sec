function myEval(userInput){
    eval(userInput);
}

let userInput = "alert('This is a malicious code');";
myEval(userInput);