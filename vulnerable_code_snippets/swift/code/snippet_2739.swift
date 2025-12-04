import Foundation

class VulnerableClass {
    var buffer: [Int] = []
    
    func addToBuffer(_ value: Int) {
        buffer.append(value)
    }
    
    func getFromBuffer(_ index: Int) -> Int? {
        return buffer[index]
    }
}

let instance = VulnerableClass()

for i in 0...100 {
    instance.addToBuffer(i)
}

if let value = instance.getFromBuffer(1000) {
    print("Value at index 1000: \(value)")
} else {
    print("Index out of bounds")
}