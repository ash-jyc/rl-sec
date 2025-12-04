import Foundation

struct Buffer {
    var data: [UInt8] = []
    let size: Int
}

func writeToBuffer(_ buffer: inout Buffer, _ data: [UInt8]) {
    for i in 0..<data.count {
        buffer.data.append(data[i])
    }
}

var myBuffer = Buffer(size: 10)
let dataToWrite = Array(repeating: 0xFF, count: 20)
writeToBuffer(&myBuffer, dataToWrite)
print("Buffer data: \(myBuffer.data)")