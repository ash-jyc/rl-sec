import Foundation

func processUserInput(input: String) -> String {
    var sanitizedInput = ""
    for character in input {
        if character.isLetter || character.isNumber {
            sanitizedInput.append(character)
        }
    }
    return sanitizedInput
}

let userInput = "<script>alert('Hello, world')</script>"
let sanitizedInput = processUserInput(input: userInput)
print(sanitizedInput)