function process_input(input){
    let buffer = new ArrayBuffer(10);
    let view = new DataView(buffer);
    for(let i=0; i<input.length; i++){
        view.setUint8(i, input.charCodeAt(i));
    }
}
process_input("This is a long string that will cause a buffer overflow!");