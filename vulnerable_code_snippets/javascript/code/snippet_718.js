let buffer = new ArrayBuffer(8);
let view = new DataView(buffer);

for (let i = 0; i < 10; i++) {
    view.setUint8(i, i);
}