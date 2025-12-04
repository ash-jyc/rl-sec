import Foundation

struct Buffer {
    var data: [UInt8]
}

func writeToBuffer(buffer: inout Buffer, data: [UInt8]) {
    let newData = buffer.data + data
    buffer.data = Array(newData.prefix(upTo: 10)) // This line is a potential buffer overflow due to the fixed size of the buffer
}

var buffer = Buffer(data: [1, 2, 3, 4, 5])
writeToBuffer(buffer: &buffer, data: [6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16])
print(buffer.data)