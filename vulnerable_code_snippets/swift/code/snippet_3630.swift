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
        data.withCString {
            memcpy(buffer, $0, data.count)
        }
    }
}

let myInstance = VulnerableClass(size: 10)
myInstance.writeToBuffer(data: "This string is way too long for the buffer")