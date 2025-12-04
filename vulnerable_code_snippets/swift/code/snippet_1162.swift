import Foundation

func badFunction(_ input: String) -> String {
    var buffer = Array<UInt8>(repeating: 0, count: 1024)
    let inputData = input.utf8
    if inputData.count > buffer.count {
        // This is where the buffer overflow occurs, we are writing more data than our buffer can hold
        buffer = Array(inputData[0..<buffer.count])
    } else {
        buffer = Array(inputData)
    }
    return String(decoding: buffer, as: UTF8.self)
}

let userInput = "This is a long string that will cause a buffer overflow"
badFunction(userInput)