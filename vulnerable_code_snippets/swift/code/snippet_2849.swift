import Foundation

class UnsafePointerExample {
    var pointer: UnsafeMutablePointer<Int>?
    
    init() {
        let intValue = 10
        self.pointer = UnsafeMutablePointer(mutating: intValue)
    }
    
    func deallocatePointer() {
        self.pointer = nil
    }
    
    func accessPointer() -> Int {
        return pointer?.pointee ?? 0
    }
}

let example = UnsafePointerExample()
print(example.accessPointer()) // Outputs: 10

example.deallocatePointer()
print(example.accessPointer()) // Outputs: 0