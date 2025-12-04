import Foundation

class VulnerableClass {
    var data: UnsafeMutablePointer<Int8>?
    
    init(size: Int) {
        self.data = UnsafeMutablePointer(calloc(size, 1))
    }
    
    deinit {
        free(self.data)
    }
    
    func writeData(_ newData: [Int8]) {
        newData.withUnsafeBufferPointer { buffer in
            memcpy(self.data, buffer.baseAddress, buffer.count)
        }
    }
}

let size = 10
var instance = VulnerableClass(size: size)
var dataToWrite = Array(repeating: 0x41, count: size + 1) // Overflows the buffer
instance.writeData(dataToWrite)