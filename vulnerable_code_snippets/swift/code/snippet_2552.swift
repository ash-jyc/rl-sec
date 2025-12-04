import Foundation

class VulnerableClass {
    var buffer: UnsafeMutablePointer<Int8> = nil

    init(size: Int) {
        buffer = UnsafeMutablePointer<Int8>.allocate(capacity: size)
    }

    func writeToBuffer(_ data: String) {
        let bytes = [UInt8](data.utf8)
        bytes.withUnsafeBufferPointer {
            buffer.initialize(from: $0)
        }
    }

    func readFromBuffer() -> String? {
        guard let buffer = buffer else { return nil }
        let string = String(cString: buffer)
        return string
    }
}

let instance = VulnerableClass(size: 10)
instance.writeToBuffer("Hello, World")
print(instance.readFromBuffer())