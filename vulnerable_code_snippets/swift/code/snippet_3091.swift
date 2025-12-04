import Foundation

func unsafeFunction() -> UnsafeMutableRawBufferPointer {
    let count = 10
    let stride = MemoryLayout<Int8>.stride
    let buffer = UnsafeMutableRawBufferPointer.allocate(byteCount: count * stride, alignment: stride)
    buffer.initialize(to: 0, as: Int8.self)
    return buffer
}

let buffer = unsafeFunction()
buffer[10] = 10 // Accessing memory beyond the allocated memory