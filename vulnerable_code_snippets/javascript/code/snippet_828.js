function processInput(input) {
    let buffer = new ArrayBuffer(1024);
    let view = new DataView(buffer);
    for (let i = 0; i < input.length; i++) {
        view.setUint8(i, input.charCodeAt(i));
    }
}

let userInput = "This is a potentially malicious string that could cause a buffer overflow if it's too long";
processInput(userInput);