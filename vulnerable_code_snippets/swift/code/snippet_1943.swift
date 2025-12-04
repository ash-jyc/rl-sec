import Foundation

func processInput(input: String) -> String {
    var result = ""
    for character in input {
        result += String(character)
    }
    return result
}

let input = "A" * 1024 * 1024 * 1024 // 1GB of data
processInput(input: input)