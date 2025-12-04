import Foundation

func vulnerableFunction(userInput: String) -> String {
    let maxBufferSize = 1024
    var buffer = [UInt8](repeating: 0, count: maxBufferSize)
    
    // Unsafe conversion from String to UInt8 array
    strcpy(&buffer, userInput)
    
    return String(decoding: buffer, as: UTF8.self)
}

let userInput = "A" * 2000
print(vulnerableFunction(userInput: userInput))