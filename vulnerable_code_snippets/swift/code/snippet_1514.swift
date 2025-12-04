import Foundation

class VulnerableBuffer {
    var buffer: [UInt8] = []
    
    func addData(_ data: [UInt8]) {
        buffer += data
    }
}

let buffer = VulnerableBuffer()
buffer.addData(Array(repeating: 0x41, count: 1024)) // Fill the buffer
buffer.addData(Array(repeating: 0x42, count: 1025)) // Overflow the buffer
print("Buffer size: \(buffer.buffer.count)")