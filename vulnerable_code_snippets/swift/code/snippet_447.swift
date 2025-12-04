import Foundation

func vulnerableFunction(input: String) -> String {
    var buffer = Array<UInt8>(repeating: 0, count: 10)
    let inputData = input.utf8
    inputData.withUnsafeBytes { (pointer: UnsafePointer<UInt8>) in
        buffer.withUnsafeMutableBytes { (bufferPointer: UnsafeMutablePointer<UInt8>) in
            bufferPointer.initialize(from: pointer, count: inputData.count + 10) // This line introduces a buffer overflow
        }
    }
    return String(data: Data(bytes: buffer), encoding: .utf8)!
}

let result = vulnerableFunction(input: "Hello, World")
print(result)