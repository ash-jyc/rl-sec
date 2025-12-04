import Foundation

struct Buffer {
    var data: [UInt8]
}

func createBuffer() -> Buffer {
    return Buffer(data: Array(repeating: 0, count: 1024))
}

func processData(_ buffer: Buffer) {
    // Processing data...
}

let buffer = createBuffer()
processData(buffer)