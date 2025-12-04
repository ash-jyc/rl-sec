class MyClass {
    var myProperty: String?
    
    init(myProperty: String?) {
        self.myProperty = myProperty
    }
    
    deinit {
        print("MyClass is being deinitialized")
    }
}

var myInstance: MyClass? = MyClass(myProperty: "Hello, World")
myInstance = nil