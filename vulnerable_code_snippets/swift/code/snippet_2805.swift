import Foundation

func readUserInput() -> String {
    let args = CommandLine.arguments
    guard args.count > 1 else {
        fatalError("No input provided")
    }
    return args[1]
}

func processUserInput(input: String) -> String {
    var result = ""
    for i in 0..<input.count {
        result += input[i]
    }
    return result
}

let userInput = readUserInput()
let processedInput = processUserInput(input: userInput)
print(processedInput)