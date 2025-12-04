import Foundation

func executeUserInput(_ userInput: String) {
    let command = "echo '\(userInput)' | sh"
    let task = Process()
    task.launchPath = "/bin/bash"
    task.arguments = ["-c", command]
    
    let pipe = Pipe()
    task.standardOutput = pipe
    task.standardError = pipe
    task.launch()
    
    let data = pipe.fileHandleForReading.readDataToEndOfFile()
    let output: String = String(data: data, encoding: .utf8)!
    print(output)
}

let userInput = "ls -l > /dev/null && echo 'Success!' || echo 'Failed!'"
executeUserInput(userInput)