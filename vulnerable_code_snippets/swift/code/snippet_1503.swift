import Foundation

func vulnerableFunction(input: String) -> String {
    var buffer = Array<UInt8>(repeating: 0, count: 1024)
    let inputData = input.utf8
    
    // This line of code is vulnerable to a buffer overflow
    buffer.removeSubrange(0..<min(buffer.count, inputData.count))
    
    let outputData = Data(bytes: &buffer, count: buffer.count)
    return String(data: outputData, encoding: .utf8)!
}

let userInput = "This is a long string that will cause a buffer overflow"
print(vulnerableFunction(input: userInput))