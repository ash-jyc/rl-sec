import Foundation

func unsafeFunction(input: String) -> String {
    var str = Array(repeating: "a", count: 1024)
    let inputArray = Array(input)
    
    for i in 0..<inputArray.count {
        str[i] = inputArray[i]
    }
    
    return String(str)
}

let userInput = "This is a long string that will cause a buffer overflow"
print(unsafeFunction(input: userInput))