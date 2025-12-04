import Foundation

func unsafeCopy(_ source: String, _ destination: UnsafeMutablePointer<Int8>, _ count: Int) {
    source.withUnsafeBytes { (bytes: UnsafeRawBufferPointer) in
        bytes.baseAddress?.move(to: destination, count: count)
    }
}

let source = "This is a very long string that will cause a buffer overflow"
var destination = [Int8](repeating: 0, count: 16)

unsafeCopy(source, &destination, MemoryLayout<Int8>.stride * destination.count)
print(String(cString: destination))