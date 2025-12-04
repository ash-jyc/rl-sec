import Foundation

func vulnerableFunction(input: String) -> String {
    let startIndex = input.index(input.startIndex, offsetBy: 5)
    let endIndex = input.index(input.endIndex, offsetBy: -5)
    let result = input[startIndex..<endIndex]
    return String(result)
}

let testInput = "This is a test input string that is long enough to trigger a buffer overflow"
print(vulnerableFunction(input: testInput))