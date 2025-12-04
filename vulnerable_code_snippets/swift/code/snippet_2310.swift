import Foundation

func readInput() -> String {
    let input = readLine() ?? ""
    var buffer: [Character] = Array(repeating: " ", count: 10)
    
    for i in 0..<input.count {
        buffer[i] = input[input.index(input.startIndex, offsetBy: i)]
    }
    
    return String(buffer)
}

print("Enter your input:")
let result = readInput()
print("Result: \(result)")