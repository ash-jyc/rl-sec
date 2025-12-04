import Foundation

class MyClass {
    var myProperty: String?
    
    deinit {
        print("MyClass is being deinitialized")
    }
}

var instance: MyClass? = MyClass()
instance = nil // This is where the memory leak occurs

for _ in 1...100000 {
    let newInstance = MyClass()
    print(newInstance)
}