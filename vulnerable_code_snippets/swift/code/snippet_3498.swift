class MyClass {
    var myString: String?
    
    init() {
        self.myString = "Hello, World!"
    }
    
    func printMyString() {
        print(self.myString ?? "")
    }
}

var myObject: MyClass? = MyClass()
myObject?.printMyString() // This will print "Hello, World!"
myObject = nil // Deallocating the object here, but still used in the next line
myObject?.printMyString() // This will cause a crash because we're trying to access a deallocated object