import Foundation

class VulnerableClass {
    var buffer: [String] = []
    
    func addToBuffer(_ item: String) {
        let maxBufferSize = 10
        if buffer.count >= maxBufferSize {
            print("Buffer overflow detected")
            return
        }
        buffer.append(item)
    }
}

let vulnClass = VulnerableClass()
for _ in 0..<20 {
    vulnClass.addToBuffer("a")
}