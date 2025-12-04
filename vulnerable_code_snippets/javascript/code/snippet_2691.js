let buffer = new ArrayBuffer(8);
let view = new DataView(buffer);

function setValues(val1, val2, val3) {
    view.setInt8(0, val1);
    view.setInt8(1, val2);
    view.setInt8(2, val3);
}

setValues(100, 200, 300);