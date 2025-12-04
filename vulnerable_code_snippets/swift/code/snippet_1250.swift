import Foundation

class VulnerableClass {
    var data: Data?
    
    init(data: Data) {
        self.data = data
    }
    
    deinit {
        print("Deinitializing VulnerableClass")
    }
}

var instance: VulnerableClass? = VulnerableClass(data: Data())
instance = nil // This will cause a memory leak because the instance's data is still retained by the closure

DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
    print("Closure executed after 5 seconds")
}

RunLoop.current.run()