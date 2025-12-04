import Foundation

func handleInput(input: String) {
    var buffer = Array<Character>(repeating: " ", count: 1024)
    let inputArray = Array(input)
    
    for i in 0..<inputArray.count {
        buffer[i] = inputArray[i] // This line is the potential buffer overflow
    }
}

let userInput = "A" * 2000 // Assume this is user input
handleInput(input: userInput)