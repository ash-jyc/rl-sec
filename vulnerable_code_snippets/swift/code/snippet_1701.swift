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

instance = nil // Here we set the instance to nil, but the string it holds is not deallocated

instance?.printMyString() // This will crash because we're trying to access a deallocated object