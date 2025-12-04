import Foundation

class MyClass {
    var data: UnsafeMutablePointer<Int>?
    
    init() {
        self.data = UnsafeMutablePointer(mutating: 0)
    }
    
    deinit {
        self.data = nil
    }
    
    func getData() -> Int {
        return self.data?.pointee ?? 0
    }
}

var myInstance: MyClass? = MyClass()
myInstance = nil
print(myInstance?.getData() ?? 0) // This will cause a use-after-free error