import Foundation

class User {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

func getUserInput() -> String {
    // Simulate user input
    return "Malicious Code Here\nprint(\"Hello, World!\")"
}

let userInput = getUserInput()
let user = User(name: userInput)

let script = """
#!/usr/bin/env swift
print("Welcome, \(user.name)")
"""

let process = Process()
process.launchPath = "/usr/bin/env"
process.arguments = [ "swift", "-" ]

process.standardInput = Pipe()
process.standardOutput = Pipe()
process.standardError = Pipe()

process.launch()
process.standardInput?.write(script.data(using: .utf8)!)
process.standardInput?.close()

let outputData = process.standardOutput?.readDataToEndOfFile()
if let outputString = String(data: outputData ?? Data(), encoding: .utf8) {
    print(outputString)
}

let errorData = process.standardError?.readDataToEndOfFile()
if let errorString = String(data: errorData ?? Data(), encoding: .utf8) {
    print(errorString)
}

process.waitUntilExit()