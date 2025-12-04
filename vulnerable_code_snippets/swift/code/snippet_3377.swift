import Foundation

struct UnsafeBuffer {
    var pointer: UnsafeMutablePointer<Int8>
    var capacity: Int
    
    init(capacity: Int) {
        self.pointer = UnsafeMutablePointer(calloc(capacity, MemoryLayout<Int8>.stride))
        self.capacity = capacity
    }
    
    mutating func write(_ bytes: [Int8]) {
        let count = min(bytes.count, capacity)
        pointer.withMemoryRebound(to: Int8.self, capacity: count) { (buffer) in
            memcpy(buffer, bytes, count)
        }
    }
    
    deinit {
        free(pointer)
    }
}

var buffer = UnsafeBuffer(capacity: 10)
buffer.write([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20])