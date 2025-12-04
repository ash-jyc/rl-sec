import Foundation

func vulnerableFunction(input: String) -> String {
    var buffer = Array<Character>(repeating: " ", count: 10)
    let inputArray = Array(input)
    
    for i in 0..<inputArray.count {
        buffer[i] = inputArray[i] // This line could cause a buffer overflow if input is longer than buffer size
    }
    
    return String(buffer)
}

let result = vulnerableFunction(input: "This string is much longer than the buffer")
print(result)