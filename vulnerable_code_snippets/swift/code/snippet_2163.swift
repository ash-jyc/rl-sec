import Foundation

func vulnerableFunction(userInput: String) -> String {
    let message = "Hello, \(userInput)"
    return message
}

let userInput = "World"
print(vulnerableFunction(userInput: userInput))