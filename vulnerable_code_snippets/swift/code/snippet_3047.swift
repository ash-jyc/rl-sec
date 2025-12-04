import Foundation

struct UnsafeBuffer {
    var data: [UInt8]
    
    init(size: Int) {
        self.data = Array(repeating: 0, count: size)
    }
    
    mutating func write(value: UInt8, at index: Int) {
        data[index] = value
    }
    
    func read(at index: Int) -> UInt8 {
        return data[index]
    }
}

let buffer = UnsafeBuffer(size: 10)
buffer.write(value: 255, at: 10) // Out of bounds access
print(buffer.read(at: 10)) // Expected output: 255, but may cause a crash or unexpected behavior