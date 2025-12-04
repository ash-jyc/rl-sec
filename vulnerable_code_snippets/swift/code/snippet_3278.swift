import Foundation

class VulnerableClass {
    var buffer: UnsafeMutablePointer<Int8>?
    
    init(size: Int) {
        buffer = calloc(size, 1)
    }
    
    deinit {
        free(buffer)
    }
    
    func writeToBuffer(data: String) {
        data.withUnsafeBytes {
            memcpy(buffer, $0.baseAddress, data.count)
        }
    }
}

let instance = VulnerableClass(size: 10)
instance.writeToBuffer(data: "Hello, World") // This will cause a buffer overflow as the size of the string is larger than the allocated buffer size.