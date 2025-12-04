import Foundation

func processUserInput(userInput: String) -> String {
    let task = Process()
    task.launchPath = "/bin/sh"
    task.arguments = ["-c", userInput]
    
    let outputPipe = Pipe()
    task.standardOutput = outputPipe
    task.standardError = outputPipe
    
    task.launch()
    
    let data = outputPipe.fileHandleForReading.readDataToEndOfFile()
    let output = String(data: data, encoding: .utf8)!
    
    return output
}

let userInput = "echo Hello, World!"
let result = processUserInput(userInput: userInput)
print(result)