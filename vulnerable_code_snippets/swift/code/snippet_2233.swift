class MyClass {
    var myString: String?
    
    init(myString: String?) {
        self.myString = myString
    }
    
    deinit {
        print("MyClass was deinitialized")
    }
}

var instance: MyClass? = MyClass(myString: "Hello, World")
instance = nil