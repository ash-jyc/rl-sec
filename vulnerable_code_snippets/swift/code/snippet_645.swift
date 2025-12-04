import Foundation

func copyStringToBuffer(source: String, destination: UnsafeMutablePointer<Int8>, length: Int) {
    source.withUnsafeBytes {
        destination.advanced(by: length).initialize(from: $0)
    }
}

let source = "Hello, World!"
var destination = [Int8](repeating: 0, count: source.utf8.count + 1)

copyStringToBuffer(source: source, destination: destination.baseAddress?.assumingMemoryBound(to: Int8.self), length: source.utf8.count)

print(String(bytes: destination, encoding: .utf8) ?? "")