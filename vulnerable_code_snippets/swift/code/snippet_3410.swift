import Foundation

func processString(input: String) -> String {
    var result = ""
    for i in 0..<input.count {
        result += input[input.index(input.startIndex, offsetBy: i)]
    }
    return result
}

let userInput = "This is a potentially long string that could cause a buffer overflow"
let processedString = processString(input: userInput)
print(processedString)