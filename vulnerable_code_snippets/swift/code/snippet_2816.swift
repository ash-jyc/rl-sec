import Foundation

func executeCommand(userInput: String) {
    let task = Process()
    task.launchPath = "/bin/sh"
    task.arguments = ["-c", "echo \(userInput)"]
    
    let pipe = Pipe()
    task.standardOutput = pipe
    task.launch()
    
    let data = pipe.fileHandleForReading.readDataToEndOfFile()
    let output: String = String(data: data, encoding: .utf8)!
    print(output)
}

let userInput = "Hello; echo 'Injected Command'"
executeCommand(userInput: userInput)