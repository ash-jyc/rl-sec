import Foundation

class UnsafePointerExample {
    func example() {
        let data = Data(repeating: 0, count: 1024)
        let pointer = UnsafeMutableRawPointer.allocate(byteCount: 1024, alignment: 1)
        
        // This is a potential use of unsafe Swift pointers.
        data.copyBytesTo(pointer, count: 1024)
        
        // No deallocation of the pointer. This can lead to memory leaks.
    }
}