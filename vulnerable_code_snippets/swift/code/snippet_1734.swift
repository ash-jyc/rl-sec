import Foundation

func formatString(_ format: String, _ args: CVarArg...) -> String? {
    return String(format: format, args)
}

let userInput = "Hello, %s" // This could be user input

if let formattedString = formatString(userInput, "World") {
    print(formattedString)
} else {
    print("Invalid format string")
}