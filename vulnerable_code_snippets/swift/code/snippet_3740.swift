class MyClass {
    var myString: String?
    
    init(str: String) {
        self.myString = str
    }
    
    deinit {
        print("MyClass is being deinitialized")
    }
}

var myInstance: MyClass? = MyClass(str: "Hello, World")
myInstance = nil