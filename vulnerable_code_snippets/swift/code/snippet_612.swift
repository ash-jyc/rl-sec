import Foundation

func unsafeFunction(userInput: String) -> String {
    var buffer = Array<UInt8>(repeating: 0, count: 128)
    let inputData = userInput.utf8
    inputData.withUnsafeBytes { (bytes: UnsafePointer<UInt8>) in
        bytes.baseAddress?.copyMemory(to: &buffer, byteCount: min(bytes.count, buffer.count))
    }
    return String(decoding: buffer, as: UTF8.self)
}

let userInput = "This is a long string that will cause a buffer overflow if not properly validated." +
               "This is a long string that will cause a buffer overflow if not properly validated." +
               "This is a long string that will cause a buffer overflow if not properly validated."
print(unsafeFunction(userInput: userInput))