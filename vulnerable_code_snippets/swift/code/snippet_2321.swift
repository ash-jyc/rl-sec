class MyClass {
    var myDelegate: AnyObject?
    
    func doSomething() {
        self.myDelegate = MyDelegate()
    }
}

class MyDelegate: AnyObject {
    var myClass: MyClass?
    
    init(_ myClass: MyClass) {
        self.myClass = myClass
    }
    
    deinit {
        print("MyDelegate was deallocated")
    }
}

var myClassInstance: MyClass? = MyClass()
myClassInstance?.doSomething()

// Here we are losing the reference to myClassInstance, but MyDelegate still holds a strong reference to it.
myClassInstance = nil