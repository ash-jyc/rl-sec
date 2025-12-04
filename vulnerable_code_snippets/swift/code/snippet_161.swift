import Foundation

func vulnerableFunction(userInput: String) -> String {
    let maxLength = 10
    var output = ""
    for i in 0..<maxLength {
        output += "\(i): \(userInput)\n"
    }
    return output
}

let userInput = "A" * 1000000 // This will cause a buffer overflow
print(vulnerableFunction(userInput: userInput))