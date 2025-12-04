import Foundation

class MyClass {
    var closure: (() -> Void)?
    
    func doSomething() {
        print("Doing something...")
    }
    
    deinit {
        print("MyClass deinitialized")
    }
}

var myInstance: MyClass? = MyClass()
myInstance?.closure = { [weak myInstance] in
    myInstance?.doSomething()
}

myInstance = nil