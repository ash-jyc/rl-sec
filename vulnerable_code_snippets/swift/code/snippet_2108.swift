import Foundation

func vulnerableFunction(userInput: String) -> String {
    var buffer = Array<UInt8>(repeating: 0, count: 128)
    let inputData = userInput.utf8
    buffer.withUnsafeMutableBufferPointer {
        let bytesCopied = inputData.withUnsafeBytes {
            ptr in ptr.baseAddress?.copyBytes(to: $0, count: min(buffer.count, inputData.count))
        }
        if let bytesCopied = bytesCopied {
            return String(decoding: buffer, as: UTF8.self)
        } else {
            return "Error"
        }
    }
}

let userInput = "This is a potentially large string that will cause a buffer overflow."
print(vulnerableFunction(userInput: userInput))