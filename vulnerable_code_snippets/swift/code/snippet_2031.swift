import Foundation

class VulnerableClass {
    var data: UnsafeMutablePointer<Int8>?
    
    init(size: Int) {
        self.data = UnsafeMutablePointer(calloc(size, 1))
    }
    
    deinit {
        free(self.data)
    }
    
    func writeData(_ value: Int8, at index: Int) {
        self.data[index] = value
    }
    
    func readData(at index: Int) -> Int8 {
        return self.data[index]
    }
}

let instance = VulnerableClass(size: 4)
instance.writeData(5, at: 0)
print(instance.readData(at: 0))