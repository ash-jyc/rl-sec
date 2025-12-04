import Foundation

class VulnerableBuffer {
    var buffer: [Int] = []
    
    func addToBuffer(_ value: Int) {
        buffer.append(value)
    }
}

let buffer = VulnerableBuffer()
for i in 0...100 {
    buffer.addToBuffer(i)
}