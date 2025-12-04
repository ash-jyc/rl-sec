import Foundation

class UnsafeClass {
    private var unsafePointer: UnsafeMutableRawPointer?
    
    init() {
        let size = 1024 * 1024 * 1024 // One gigabyte
        unsafePointer = UnsafeMutableRawPointer.allocate(byteCount: size, alignment: 1)
    }
    
    deinit {
        guard let pointer = unsafePointer else { return }
        pointer.deallocate()
    }
}

var instance: UnsafeClass? = UnsafeClass()
instance = nil // This will cause a memory leak because the deinitializer is not called