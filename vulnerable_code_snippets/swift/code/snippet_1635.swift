import Foundation

class VulnerableClass {
    var buffer: [UInt8] = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    
    func addData(_ data: [UInt8]) {
        for i in 0..<data.count {
            buffer[i] = data[i]
        }
    }
}

let instance = VulnerableClass()
instance.addData([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16])
print(instance.buffer)