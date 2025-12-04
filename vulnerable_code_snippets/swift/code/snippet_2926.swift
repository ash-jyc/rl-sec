class MyClass {
    var myString: String?
    
    init(myString: String?) {
        self.myString = myString
    }
    
    func printMyString() {
        if let myString = myString {
            print(myString)
        }
    }
}

var instance: MyClass? = MyClass(myString: "Hello, World")
instance?.printMyString() // This will print "Hello, World"

instance = nil // Here we are making the instance nil, but the class still holds a strong reference to the string

// Now the instance of MyClass is deallocated, but the string it was holding is still in memory
// This is a memory leak, because the string is now unreachable and cannot be deallocated