function myFunction(input){
    let buffer = new Uint8Array(1024);
    let inputView = new Uint8Array(input);
    for(let i=0; i<inputView.length; i++){
        buffer[i] = inputView[i];
    }
}

let largeInput = new ArrayBuffer(1025);
myFunction(new Uint8Array(largeInput));