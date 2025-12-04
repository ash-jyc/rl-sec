function processData(data) {
    let buffer = new ArrayBuffer(1024);
    let view = new DataView(buffer);
    for (let i = 0; i < data.length; i++) {
        view.setUint8(i, data.charCodeAt(i));
    }
}

const input = "This is a long string that will cause a buffer overflow";
processData(input);