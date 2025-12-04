import Foundation

func processUserInput(input: String) -> String {
    var buffer = Array<Character>(repeating: " ", count: 1024)
    let inputArray = Array(input)
    
    for i in 0..<inputArray.count {
        buffer[i] = inputArray[i]
    }
    
    return String(buffer)
}

let userInput = "A very long string that will cause a buffer overflow if not properly validated"
let result = processUserInput(input: userInput)
print(result)