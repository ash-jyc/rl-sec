import Foundation

func formatString(_ format: String, _ args: CVarArg...) -> String {
    let formatString = NSString(format: "This is a %@", format) as CFString
    return String(format: formatString as String, arguments: args)
}

let userInput = "Hello, %s"
let name = "Attacker"

let formattedString = formatString(userInput, name)
print(formattedString)