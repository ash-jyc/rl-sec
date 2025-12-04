class MyClass {
    var myString: String?
    
    init(str: String) {
        self.myString = str
    }
    
    func printMyString() {
        print(myString!)
    }
}

var instance: MyClass? = MyClass(str: "Hello, World")
instance?.printMyString() // This will print "Hello, World"

instance = nil // This will release the memory allocated for MyClass

instance?.printMyString() // This will cause a use-after-free error because the memory has been released