import Foundation

func vulnerableFunction(userInput: String) -> String {
    var buffer = Array<UInt8>(repeating: 0, count: 1024)
    let data = userInput.utf8
    data.withUnsafeBytes {
        buffer.append(contentsOf: Array($0))
    }
    return String(data: Data(buffer), encoding: .utf8)!
}

let userInput = "User Input"
print(vulnerableFunction(userInput: userInput))