function processUserInput(userInput){
    var buffer = new Array(1024);
    for(var i=0; i<userInput.length; i++){
        buffer[i] = userInput.charAt(i);
    }
    return buffer;
}
let userInput = "A".repeat(1025); //This will cause a buffer overflow
processUserInput(userInput);