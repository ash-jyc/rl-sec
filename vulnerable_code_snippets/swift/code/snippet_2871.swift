import Foundation

class VulnerableClass {
    var buffer: UnsafeMutablePointer<Int8> = nil
    var bufferSize: Int = 0
    
    init(size: Int) {
        buffer = calloc(size, 1)
        bufferSize = size
    }
    
    deinit {
        free(buffer)
    }
    
    func writeToBuffer(data: String) {
        let dataBytes = data.utf8.map { Int8($0) }
        let bytesWritten = min(dataBytes.count, bufferSize)
        
        // This is where the vulnerability is - there's no bounds checking here
        dataBytes.withUnsafeBufferPointer {
            buffer.advanced(by: bufferSize - bytesWritten).assign(from: $0)
        }
    }
}

let instance = VulnerableClass(size: 10)
instance.writeToBuffer(data: "Hello, world!!!!!!!")