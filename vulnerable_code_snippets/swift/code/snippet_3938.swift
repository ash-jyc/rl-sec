import Foundation

func echo(_ message: String) -> String {
    return String(format: "Your message: %@", message)
}

let userInput = "This is a test: %d"
print(echo(userInput))