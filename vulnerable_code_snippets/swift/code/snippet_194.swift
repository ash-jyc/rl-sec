import Foundation

func vulnerableFunction(input: String) -> String {
    var buffer = Array<Character>(repeating: " ", count: 100)
    let inputArray = Array(input)
    
    for i in 0..<inputArray.count {
        buffer[i] = inputArray[i]
    }
    
    return String(buffer)
}

let largeInput = Array<Character>(repeating: "a", count: 200).map { String($0) }.joined()
print(vulnerableFunction(input: largeInput))