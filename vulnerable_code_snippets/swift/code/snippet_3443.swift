import Foundation

func evaluateInput(userInput: String) -> Any? {
    return eval(userInput)
}

let userInput = "4 * 10"
if let result = evaluateInput(userInput: userInput) as? Int {
    print("Result: \(result)")
} else {
    print("Invalid input")
}