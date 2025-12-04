class MyClass {
    var myProperty: String?
    
    init(myProperty: String?) {
        self.myProperty = myProperty
    }
    
    func printMyProperty() {
        print(myProperty!)
    }
}

var obj1: MyClass? = MyClass(myProperty: "Hello, World")
obj1?.printMyProperty() // This will print "Hello, World"

obj1 = nil // Here we forcefully set obj1 to nil

obj1?.printMyProperty() // This will crash because obj1 is now nil