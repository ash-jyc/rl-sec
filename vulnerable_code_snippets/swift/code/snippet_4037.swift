import Foundation

func vulnerableFunction(userInput: String) {
    var buffer = Array<Int8>(repeating: 0, count: 1024)
    let inputData = Data(userInput.utf8)
    
    let bytesToCopy = min(inputData.count, buffer.count)
    inputData.copyBytes(to: &buffer, count: bytesToCopy)
}

let userInput = "Long string that will cause a buffer overflow"
vulnerableFunction(userInput: userInput)