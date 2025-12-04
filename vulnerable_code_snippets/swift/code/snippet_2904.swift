import Foundation

func vulnerableFunction(input: String) -> String {
    var buffer = Array<Character>(repeating: "0", count: 1024)
    let inputArray = Array(input)
    
    for i in 0..<inputArray.count {
        buffer[i] = inputArray[i] // Potential buffer overflow here
    }
    
    return String(buffer)
}

let input = "This is a long string that will cause a buffer overflow if its length exceeds the buffer size."
print(vulnerableFunction(input: input))