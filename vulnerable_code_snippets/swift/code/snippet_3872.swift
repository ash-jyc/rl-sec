import Foundation

func vulnerableFunction(userInput: String) {
    var buffer = Array<UInt8>(repeating: 0, count: 1024)
    let inputData = userInput.utf8
    let inputLength = inputData.count
    
    // This line introduces a buffer overflow vulnerability
    buffer.replaceSubrange((0..<inputLength), with: inputData)
}

let userInput = "This is a long string that will cause a buffer overflow!"
vulnerableFunction(userInput: userInput)