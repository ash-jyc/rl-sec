import Foundation

class VulnerableClass {
    private var unsafePointer: UnsafeMutablePointer<Int>?
    
    init(size: Int) {
        unsafePointer = UnsafeMutablePointer<Int>.allocate(capacity: size)
    }
    
    func unsafeWriteToMemory(value: Int, atIndex index: Int) {
        unsafePointer?.pointee[index] = value
    }
    
    func unsafeReadFromMemory(atIndex index: Int) -> Int {
        return unsafePointer?.pointee[index] ?? 0
    }
}

let size = 10
var instance = VulnerableClass(size: size)

// This will cause a buffer overflow because we are writing to an index that is out of bounds
instance.unsafeWriteToMemory(value: 100, atIndex: size + 1)

// This will cause a null pointer dereference because we are reading from an uninitialized pointer
print(instance.unsafeReadFromMemory(atIndex: size + 2))