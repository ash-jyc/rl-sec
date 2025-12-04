import Foundation

func vulnerableFunction(input: String) -> String {
    var buffer = [UInt8](repeating: 0, count: 1024)
    let data = Data(input.utf8)
    data.withUnsafeBytes { ptr in
        buffer.withUnsafeMutableBufferPointer { buf in
            buf.baseAddress?.initialize(from: ptr, count: data.count + 1) // This line can cause a buffer overflow if data.count is greater than 1024
        }
    }
    return String(decoding: buffer, as: UTF8.self)
}

let userInput = "User input here"
print(vulnerableFunction(input: userInput))