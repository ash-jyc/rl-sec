import Foundation

func vulnerableFunction(userInput: String) -> String {
    let fixedString = "hello"
    return fixedString + userInput
}

let userInput = "A" * 1000000000
let result = vulnerableFunction(userInput: userInput)
print(result)