import Foundation

func processUserInput(input: String) -> String {
    var result = ""
    let maxLength = 1024
    if input.count > maxLength {
        print("Input too long")
        return ""
    }
    for i in 0..<input.count {
        result += input[i]
    }
    return result
}

let userInput = "This is a very long string that will cause a buffer overflow because it exceeds the maximum allowed length"
let processedInput = processUserInput(input: userInput)
print(processedInput)