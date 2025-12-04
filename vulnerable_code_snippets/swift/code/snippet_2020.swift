import Foundation

func concatenateStrings(_ strings: [String]) -> String {
    var result = ""
    for string in strings {
        result += string
    }员
    return result
}

let userInput = "User input"
let sanitizedInput = userInput.replacingOccurrences(of: "input", with: "")

let arrayOfStrings = Array(repeating: sanitizedInput, count: Int(pow(2, 16)))

let result = concatenateStrings(arrayOfStrings)
print(result)