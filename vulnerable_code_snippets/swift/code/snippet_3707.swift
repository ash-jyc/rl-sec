import Foundation

func processUserInput(input: String) {
    var buffer = Array<UInt8>(repeating: 0, count: 1024)
    let data = input.utf8
    buffer.withUnsafeMutableBufferPointer {
        data.copyBytesTo(buffer)
    }
}

let userInput = "This is a potentially large string that may cause a buffer overflow or memory corruption"
processUserInput(input: userInput)