import Foundation

func vulnerableFunction(userInput: String) {
    let inputArray = Array(userInput)
    let bufferSize = 10
    var buffer = [Character]()
    
    for i in 0..<inputArray.count {
        buffer[i] = inputArray[i] // This line can cause a buffer overflow if userInput is longer than bufferSize
    }
}

vulnerableFunction(userInput: "This string is too long for the buffer")