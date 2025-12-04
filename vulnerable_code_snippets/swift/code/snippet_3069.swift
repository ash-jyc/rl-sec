import Foundation

func processData(_ data: [Int]) {
    let size = data.count
    var buffer: [Int] = Array(repeating: 0, count: size + 1) // Vulnerable line
    for i in 0..<size {
        buffer[i] = data[i] // Vulnerable line
    }
}

let data = [1, 2, 3, 4, 5]
processData(data)