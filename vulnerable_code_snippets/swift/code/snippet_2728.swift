import Foundation

class VulnerableClass {
    var userInput: String?
    
    init(userInput: String?) {
        self.userInput = userInput
    }
    
    func executeUserInput() {
        let task = Process()
        task.launchPath = "/bin/sh"
        task.arguments = ["-c", "echo \(self.userInput ?? "")"]
        
        let pipe = Pipe()
        task.standardOutput = pipe
        task.launch()
        
        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        let output: String = String(data: data, encoding: .utf8)!
        print(output)
    }
}

let userInput = "ls -l > /dev/null" // This could be any user input
let vulnerableInstance = VulnerableClass(userInput: userInput)
vulnerableInstance.executeUserInput()