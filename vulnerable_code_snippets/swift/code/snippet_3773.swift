import Foundation

class VulnerableClass {
    var buffer: [Int8] = Array(repeating: 0, count: 10)
    
    func writeToBuffer(_ data: Int8, at position: Int) {
        if position < buffer.count {
            buffer[position] = data
        } else {
            print("Trying to write out of buffer bounds")
        }
    }
    
    func readFromBuffer(at position: Int) -> Int8? {
        if position < buffer.count {
            return buffer[position]
        } else {
            print("Trying to read out of buffer bounds")
            return nil
        }
    }
}

let instance = VulnerableClass()
instance.writeToBuffer(127, at: 10) // This will cause buffer overflow
instance.readFromBuffer(at: 10) // This will also cause buffer overflow