import Foundation

class VulnerableClass {
    var buffer: Array<Int> = []
    
    func addToBuffer(value: Int) {
        buffer.append(value)
    }
    
    func getFromBuffer(index: Int) -> Int? {
        return buffer[index]
    }
}

let instance = VulnerableClass()
for i in 0...100_000 {
    instance.addToBuffer(value: i)
}

if let value = instance.getFromBuffer(index: 100_000) {
    print("Value at index 100_000: \(value)")
} else {
    print("Index out of bounds")
}