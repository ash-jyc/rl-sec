import Foundation

class VulnerableClass {
    var buffer: [String] = []
    
    func addInput(input: String) {
        buffer.append(input)
    }
}

let instance = VulnerableClass()
instance.addInput(input: "Hello, World")
// This is where the vulnerability occurs. If the input is large enough, it will cause a buffer overflow.
for _ in 0..<1000000 {
    instance.addInput(input: "Spam")
}