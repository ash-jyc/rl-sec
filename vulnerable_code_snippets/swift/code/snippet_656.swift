import Foundation

func vulnerableFunction(input: String) -> String {
    var buffer = Array<UInt8>(repeating: 0, count: 1024)
    let inputData = input.utf8
    
    // No check for buffer overflow here
    buffer.removeFirst(buffer.endIndex.offsetBy(-inputData.count))
    buffer.append(contentsOf: inputData)
    
    return String(bytes: buffer, encoding: .utf8)!
}

let input = "A" * 2048 // This will cause a buffer overflow
let result = vulnerableFunction(input: input)
print(result)