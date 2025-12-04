import Foundation

func processUserInput() {
    let bufferSize = 1024
    var buffer = Array<UInt8>(repeating: 0, count: bufferSize)
    
    print("Enter your input:")
    let userInput = readLine() ?? ""
    
    for i in 0..<userInput.count {
        buffer[i] = UInt8(userInput[userInput.index(userInput.startIndex, offsetBy: i)].asciiValue ?? 0)
    }
}

processUserInput()