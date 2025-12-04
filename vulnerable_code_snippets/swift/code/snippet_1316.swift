import Foundation

func processUserInput(_ input: String) {
    var buffer = Array(repeating: 0, count: 1024)
    let inputBytes = input.utf8
    inputBytes.withUnsafeBufferPointer {
        buffer.withUnsafeMutableBufferPointer {
            let bytesToCopy = min(inputBytes.count, buffer.count)
            $0.baseAddress?.copyBytes(from: $0.baseAddress ?? 0, count: bytesToCopy)
        }
    }
}

let userInput = "This is a test"
processUserInput(userInput)