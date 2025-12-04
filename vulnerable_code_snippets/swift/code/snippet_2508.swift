import Foundation

func evaluateInput(input: String) {
    let result = eval(input)
    print("Result: \(result)")
}

let userInput = "1 + 1"
evaluateInput(input: userInput)