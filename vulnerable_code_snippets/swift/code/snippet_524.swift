import Foundation

class VulnerableClass {
    let bufferSize = 10
    var buffer = Array<Int8>(repeating: 0, count: bufferSize)
    
    func copyData(_ data: [Int8]) {
        for i in 0..<data.count {
            buffer[i] = data[i]
        }
    }
}

let data = Array<Int8>(repeating: 1, count: 20)
let vulnClass = VulnerableClass()
vulnClass.copyData(data)