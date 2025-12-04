import Foundation

class UnsafeMemory {
    private var unsafePointer: UnsafeMutablePointer<Int>?
    
    init(size: Int) {
        unsafePointer = UnsafeMutablePointer<Int>.allocate(capacity: size)
    }
    
    func setValue(_ value: Int, at index: Int) {
        unsafePointer?.pointee[index] = value
    }
    
    func getValue(at index: Int) -> Int {
        return unsafePointer?.pointee[index] ?? 0
    }
}

let memory = UnsafeMemory(size: 10)
memory.setValue(20, at: 5)
print(memory.getValue(at: 5))