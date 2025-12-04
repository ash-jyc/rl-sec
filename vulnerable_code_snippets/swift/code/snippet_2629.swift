import Foundation

func processUserInput(input: String) -> String {
    var buffer = Array<Character>(repeating: " ", count: 100)
    let inputArray = Array(input)
    
    for i in 0..<inputArray.count {
        buffer[i] = inputArray[i] // This line can cause a buffer overflow if input is longer than buffer
    }
    
    return String(buffer)
}

let userInput = "This is a long string that will cause a buffer overflow"
let processedInput = processUserInput(input: userInput)
print(processedInput)