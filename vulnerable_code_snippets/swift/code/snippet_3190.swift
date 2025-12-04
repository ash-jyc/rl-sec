import Foundation

func vulnerableFunction(input: String) -> String {
    var mutableString = input
    let bufferSize = 10
    let bufferArray = Array(repeating: 0, count: bufferSize)
    
    for i in 0..<mutableString.count {
        bufferArray[i] = Int8(mutableString[mutationString.index(mutationString.startIndex, offsetBy: i)].asciiValue ?? 0)
    }
    
    return String(describing: Data(bytes: bufferArray))
}

let testInput = "This is a test string"
print(vulnerableFunction(input: testInput))