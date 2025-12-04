import Foundation

class VulnerableClass {
    var buffer: UnsafeMutablePointer<Int8>?
    
    init(size: Int) {
        buffer = calloc(size, 1)
    }
    
    deinit {
        free(buffer)
    }
    
    func writeToBuffer(_ data: String) {
        let range = min(data.count, strlen(buffer))
        data.withUnsafeBytes { buffer?.advanced(by: range).storeBytes(of: $0) }
    }
}

let instance = VulnerableClass(size: 1024)
instance.writeToBuffer("This string is too long for the buffer")