import Foundation

func processUserInput(input: String) -> String {
    var buffer = Array<UInt8>(repeating: 0, count: 1024)
    let inputData = input.utf8
    
    guard inputData.count <= buffer.count else {
        return "Error: Input too long"
    }
    
    buffer.withUnsafeMutableBufferPointer { bufferPointer in
        inputData.withUnsafeBytes { inputPointer in
            bufferPointer.baseAddress?.copyBytes(from: inputPointer, count: inputData.count)
        }
    }
    
    return String(decoding: buffer, as: UTF8.self) ?? "Error: Decoding failed"
}

let userInput = readLine() ?? ""
let result = processUserInput(input: userInput)
print(result)