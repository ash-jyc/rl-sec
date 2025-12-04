import Foundation

func vulnerableFunction(userInput: String) -> String {
    var buffer = Array<Character>(repeating: " ", count: 10)
    let inputArray = Array(userInput)
    
    for i in 0..<inputArray.count {
        buffer[i] = inputArray[i]
    }
    
    return String(buffer)
}

let userInput = "This is a long string that will cause a buffer overflow"
print(vulnerableFunction(userInput: userInput))