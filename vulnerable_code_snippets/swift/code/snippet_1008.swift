class MyClass {
    var myValue: String?
    
    init(value: String?) {
        self.myValue = value
    }
    
    deinit {
        print("MyClass is being deinitialized")
    }
}

var myInstance: MyClass? = MyClass(value: "Hello, World")
myInstance = nil