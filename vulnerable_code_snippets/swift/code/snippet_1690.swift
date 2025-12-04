import Foundation

func processUserInput(input: String) -> String {
    var buffer = Array<Character>(repeating: " ", count: 1024)
    let inputArray = Array(input)
    
    for i in 0..<inputArray.count {
        buffer[i] = inputArray[i]
    }
    
    return String(buffer)
}

let userInput = Array<Character>(repeating: "A", count: 2048).map({String($0)}).joined()
let result = processUserInput(input: userInput)
print(result)