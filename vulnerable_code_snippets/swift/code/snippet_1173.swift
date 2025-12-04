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
instance = nil
// Due to the above line, the instance of MyClass will be deallocated, but its property `myProperty` still holds a strong reference to the string "Hello, World". This is a memory leak.