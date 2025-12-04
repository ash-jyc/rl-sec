import Foundation

class UnsafePointerExample {
    private var data: Data?
    private var pointer: UnsafeMutableRawPointer?
    
    init(size: Int) {
        data = Data(repeating: 0, count: size)
        pointer = data?.baseAddress?.assumingMemoryBound(to: UInt8.self)
    }
    
    func writeToPointer(value: UInt8, atOffset offset: Int) {
        guard let ptr = pointer else { return }
        ptr.advanced(by: offset).storeBytes(of: value, as: UInt8.self)
    }
    
    func readFromPointer(atOffset offset: Int) -> UInt8? {
        guard let ptr = pointer else { return nil }
        return ptr.load(fromByteOffset: offset, as: UInt8.self)
    }
}

let example = UnsafePointerExample(size: 1024)
example.writeToPointer(value: 42, atOffset: 0)
print(example.readFromPointer(atOffset: 0)) // prints: 42