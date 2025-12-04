import Foundation

func processString(input: String) -> String {
    var mutableInput = input
    for _ in 0..<1000000 {
        mutableInput += "a"
    }
    return mutableInput
}

let largeString = String(repeating: "a", count: 1000000)
let result = processString(input: largeString)
print(result)