import Foundation

func someFunction(input: String) -> String {
    var buffer = Array(repeating: 0, count: 1024)
    let inputArray = Array(input)
    
    for i in 0..<inputArray.count {
        buffer[i] = inputArray[i]
    }
    
    return String(cString: buffer)
}

let userInput = "This is a user input string that is longer than the buffer size"
print(someFunction(input: userInput))