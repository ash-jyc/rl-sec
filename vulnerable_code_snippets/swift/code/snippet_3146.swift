import Foundation

class MyClass {
    var myProperty: String?
    
    func setMyProperty(value: String?) {
        self.myProperty = value
    }
}

var strongReference: MyClass? = MyClass()
strongReference?.setMyProperty(value: "Hello, World")

// This will cause a memory leak because the strong reference to MyClass instance is never released.
strongReference = nil