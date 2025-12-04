import Foundation

class MyClass {
    var myProperty: String?
    
    init(myProperty: String?) {
        self.myProperty = myProperty
    }
    
    deinit {
        print("MyClass is being deinitialized")
    }
}

var instance: MyClass? = MyClass(myProperty: "Hello, World")
instance = nil // This line causes a memory leak