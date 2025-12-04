import Foundation

func vulnerableFunction(input: String) -> String {
    var buffer = Array<Character>(repeating: " ", count: 10)
    let inputArray = Array(input)
    
    for i in 0..<inputArray.count {
        buffer[i] = inputArray[i]
    }
    
    return String(buffer)
}

let longString = "This is a very long string that will cause a buffer overflow"
print(vulnerableFunction(input: longString))