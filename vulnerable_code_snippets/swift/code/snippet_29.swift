import Foundation

class VulnerableBuffer {
    var buffer: [UInt8] = []
    
    func addData(_ data: [UInt8]) {
        let availableSpace = 1024 - buffer.count
        let dataToAdd = data.prefix(availableSpace)
        buffer.append(contentsOf: dataToAdd)
    }
}

let buffer = VulnerableBuffer()
buffer.addData([0x01, 0x02, 0x03, 0x04, 0x05])
buffer.addData(Array(repeating: 0xFF, count: 2048)) // This will cause a buffer overflow