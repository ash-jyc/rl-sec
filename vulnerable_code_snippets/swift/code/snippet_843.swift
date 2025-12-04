import Foundation

class MyClass {
    var myString: String?
    
    init(string: String) {
        self.myString = string
    }
    
    deinit {
        print("MyClass instance is being deinitialized")
    }
}

var instances: [MyClass] = []

for _ in 0..<1_000_000 {
    let instance = MyClass(string: "Hello, Worlds")
    instances.append(instance)
}

instances.removeAll() // This line of code does not deallocate the instances, hence causing a memory leak