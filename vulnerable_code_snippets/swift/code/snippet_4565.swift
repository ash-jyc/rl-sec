import Foundation

func vulnerableFunction(input: UnsafePointer<Int8>) -> Int {
    var sum = 0
    for i in 0..<10 {
        sum += input.advancedBy(i).pointee
    }
    return sum
}

let array = [Int8](count: 10, repeatedValue: 5)
let result = withUnsafePointer(&array) { ptr in
    vulnerableFunction(ptr)
}
print(result)