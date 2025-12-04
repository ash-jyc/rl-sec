import Foundation

let bufferSize = 10
var buffer = Array(repeating: 0, count: bufferSize)

func writeToBuffer(_ data: [Int]) {
    for i in 0..<data.count {
        buffer[i] = data[i]
    }
}

let data = Array(repeating: 1, count: bufferSize + 1)
writeToBuffer(data)

print(buffer)