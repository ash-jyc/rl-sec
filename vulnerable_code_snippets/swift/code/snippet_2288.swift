import Foundation

func allocateMemory(_ size: Int) -> UnsafeMutablePointer<Int8> {
    let memory = UnsafeMutablePointer<Int8>.allocate(capacity: size)
    return memory
}

func fillMemory(_ memory: UnsafeMutablePointer<Int8>, _ size: Int) {
    for i in 0..<size {
        memory[i] = Int8(i % 256)
    }
}

func useMemory(_ memory: UnsafeMutablePointer<Int8>, _ size: Int) {
    for i in 0..<size + 1 { // This will cause a buffer overflow
        print("Value at \(i): \(memory[i])")
    }
}

let size = 10
let memory = allocateMemory(size)
fillMemory(memory, size)
useMemory(memory, size)