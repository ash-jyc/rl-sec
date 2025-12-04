import Foundation

class VulnerableClass {
    var data: [String] = []
    
    func addData(_ value: String) {
        self.data.append(value)
    }
}

let instance = VulnerableClass()
instance.addData("Some data")
// Here we have a memory leak, because the reference to the instance is lost. 
// The instance will never be deallocated, causing a memory leak.