import Foundation

func processString(input: String) -> String {
    var result = ""
    for i in 0..<input.count {
        result.append(input[input.index(input.startIndex, offsetBy: i)])
    }
    return result
}

let userInput = "This is a long string that will cause a buffer overflow..."
let processedString = processString(input: userInput)
print(processedString)