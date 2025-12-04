import Foundation

class VulnerableClass {
    var data: Data?
    
    init(data: Data) {
        self.data = data
    }
    
    deinit {
        print("Deinitializing")
    }
}

var instance: VulnerableClass? = VulnerableClass(data: Data())
instance = nil // This will cause the deinitializer to be called, but the Data instance will not be deallocated