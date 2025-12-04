class MyClass {
    var myProperty: MyOtherClass?
    
    init() { }
    
    func createCycle() {
        let instance = MyOtherClass()
        self.myProperty = instance
        instance.myOtherProperty = self
    }
    
    deinit {
        print("MyClass Deinitialized")
    }
}

class MyOtherClass {
    var myOtherProperty: MyClass?
    
    init() { }
    
    deinit {
        print("MyOtherClass Deinitialized")
    }
}

var myInstance: MyClass? = MyClass()
myInstance?.createCycle()
myInstance = nil