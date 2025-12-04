import Foundation

class MemoryLeakClass {
    var data: Data?
    
    init() {
        self.data = Data(count: 1024 * 1024 * 1024) // allocate 1GB of memory
    }
    
    func freeMemory() {
        self.data = nil // release the memory
    }
}

var instance: MemoryLeakClass? = MemoryLeakClass()
instance?.freeMemory()