import Foundation

func unsafeFunction(input: UnsafePointer<Int8>) -> Int {
    var result = 0
    for i in 0..<10 {
        result += input[i]
    }
    return result
}

let data = Data(repeating: 1, count: 20)
let pointer = data.withUnsafeBytes { unsafeFunction(input: $0.bindMemory(to: Int8.self).pointee) }
print(pointer)