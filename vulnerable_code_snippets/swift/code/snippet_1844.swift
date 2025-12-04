import Foundation

class VulnerableClass {
    var buffer: UnsafeMutablePointer<Int8> = nil
    var bufferSize: Int = 0
    
    init(size: Int) {
        buffer = UnsafeMutablePointer<Int8>.allocate(capacity: size)
        bufferSize = size
    }
    
    func writeToBuffer(data: String) {
        let dataBytes = data.utf8.map { Int8($0) }
        dataBytes.withUnsafeBufferPointer { (bufferPointer) in
            let bytesCountToWrite = min(bufferSize, dataBytes.count)
            buffer.initialize(from: bufferPointer.startAddress, count: bytesCountToWrite)
        }
    }
    
    deinit {
        buffer.deallocate()
    }
}

let instance = VulnerableClass(size: 10)
instance.writeToBuffer(data: "This string is too long for the buffer")