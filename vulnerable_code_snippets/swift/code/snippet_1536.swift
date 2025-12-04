import Foundation

func getUserInput() -> String {
    return "Hello, %s"
}

func printFormattedString() {
    let userInput = getUserInput()
    let formattedString = String(format: userInput)
    print(formattedString)
}

printFormattedString()