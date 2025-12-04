import Foundation

func vulnerableFunction(userInput: String) -> String {
    let maxLength = 100
    var buffer = Array<UInt8>(repeating: 0, count: maxLength)
    let inputData = userInput.utf8
    
    // Vulnerable Code: No check on inputData.count
    buffer.replaceSubrange(0..<min(maxLength, inputData.count), with: inputData)
    
    return String(decoding: buffer, as: UTF8.self)
}

let userInput = "This is a long string that will cause a buffer overflow if not checked properly"
print(vulnerableFunction(userInput: userInput))