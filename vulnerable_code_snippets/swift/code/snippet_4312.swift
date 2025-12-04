import Foundation

func processUserInput(input: String) -> String {
    var buffer = Array<UInt8>(repeating: 0, count: 1024)
    let inputData = input.data(using: .utf8)!
    
    // Unsafe code here, no bounds checking
    inputData.withUnsafeBytes { (bytes: UnsafePointer<UInt8>) in
        bytes.copyBytes(to: &buffer, count: inputData.count)
    }
    
    return String(decoding: buffer, as: UTF8.self)
}

let userInput = "A" * 2000  // This will cause a buffer overflow
let result = processUserInput(input: userInput)
print(result)