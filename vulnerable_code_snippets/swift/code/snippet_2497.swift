import Foundation

func vulnerableFunction(userInput: String) {
    var buffer = Array<Character>(repeating: " ", count: 1024)
    let inputArray = Array(userInput)
    
    for i in 0..<inputArray.count {
        buffer[i] = inputArray[i]
    }
}

let userInput = readLine() ?? ""
vulnerableFunction(userInput: userInput)