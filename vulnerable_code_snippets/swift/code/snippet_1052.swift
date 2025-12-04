import Foundation

class VulnerableClass {
    var buffer: UnsafeMutablePointer<Int8>
    
    init(size: Int) {
        buffer = UnsafeMutablePointer<Int8>.allocate(capacity: size)
    }
    
    func writeToBuffer(data: String) {
        data.withUnsafeBytes { (bytes: UnsafeRawBufferPointer) in
            bytes.baseAddress?.assumingMemoryBound(to: Int8.self).copy(from: bytes, count: min(bytes.count, buffer.count))
        }
    }
    
    deinit {
        buffer.deallocate()
    }
}

let instance = VulnerableClass(size: 10)
instance.writeToBuffer(data: "This string is too long for the buffer")