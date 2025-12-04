function processData(data) {
    let buffer = new ArrayBuffer(1024);
    let view = new DataView(buffer);
    for (let i = 0; i < data.length; i++) {
        view.setUint8(i, data[i]);
    }
}

let largeData = new Uint8Array(1025); // This will cause a buffer overflow
processData(largeData);