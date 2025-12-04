import Foundation

func vulnerableFunction(userInput: String) -> String {
    var buffer = Array<UInt8>(repeating: 0, count: 1024)
    let inputData = userInput.utf8
    buffer.withUnsafeMutableBufferPointer {
        copy(inputData, to: $0.baseAddress!)
    }
    return String(decoding: buffer, as: UTF8.self)
}

let userInput = "This is a long string that will cause a buffer overflow or memory corruption."
print(vulnerableFunction(userInput: userInput))