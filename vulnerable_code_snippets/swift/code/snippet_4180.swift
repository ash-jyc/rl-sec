import Foundation

func processUserInput(input: String) -> String {
    var str = input
    let length = str.count
    for i in 0..<length {
        if str[str.index(str.startIndex, offsetBy: i)] == "a" {
            str.insert("b", at: str.index(str.startIndex, offsetBy: i))
        }
    }
    return str
}

let userInput = "aaaaaa"
let result = processUserInput(input: userInput)
print(result)