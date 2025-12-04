import Foundation

class VulnerableClass {
    var buffer: UnsafeMutablePointer<Int8>?
    
    init(size: Int) {
        buffer = calloc(size, 1)
    }
    
    deinit {
        free(buffer)
    }
    
    func writeData(_ data: String) {
        let count = strlen(data)
        memcpy(buffer, data, count)
    }
}

let instance = VulnerableClass(size: 10)
instance.writeData("This string is too long for the buffer")