import Foundation

func processUserInput(input: String) -> String {
    var buffer = Array<Character>(repeating: " ", count: 1024)
    let inputArray = Array(input)
    
    for i in 0..<inputArray.count {
        buffer[i] = inputArray[i] // This line can cause a buffer overflow if input is longer than the buffer size
    }
    
    return String(buffer)
}

let userInput = "This is a long string that will cause a buffer overflow if not handled properly"
let processedData = processUserInput(input: userInput)
print(processedData)