import Foundation

struct UnsafeBuffer {
    var data: [UInt8]
}

func writeToBuffer(buffer: UnsafeMutablePointer<UnsafeBuffer>, data: [UInt8]) {
    let dataSize = data.count
    let bufferSize = buffer.pointee.data.count
    
    // No bounds checking here, potential buffer overflow
    data.withUnsafeBufferPointer { bufferPointer in
        buffer.pointee.data.withUnsafeMutableBufferPointer { bufferPointer in
            bufferPointer.base.advanced(by: dataSize).base.move(from: bufferPointer.base, by: bufferSize)
        }
    }
}

var buffer = UnsafeBuffer(data: Array(repeating: 0, count: 10))
let data = Array(repeating: 1, count: 20)
writeToBuffer(buffer: &buffer, data: data)