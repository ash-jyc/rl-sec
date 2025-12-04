import Foundation

// This function is vulnerable to buffer overflow attacks due to its behavior
func processString(input: String) -> String {
    var result = input
    let length = input.count
    for i in 0..<length {
        // This line of code is vulnerable because it allows us to modify the string directly
        result.replaceSubrange(result.index(result.startIndex, offsetBy: i)..<result.index(result.startIndex, offsetBy: i + 1), with: "a")
    }
    return result
}

let testString = "Hello, World!"
print(processString(input: testString))