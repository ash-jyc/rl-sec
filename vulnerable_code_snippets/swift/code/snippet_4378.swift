class MyClass {
    var myProperty: String?
    
    init(myProperty: String?) {
        self.myProperty = myProperty
    }
    
    func printMyProperty() {
        print(myProperty ?? "")
    }
}

var myInstance: MyClass? = MyClass(myProperty: "Hello, World")
myInstance?.printMyProperty() // Outputs: Hello, World

myInstance = nil // This line is the vulnerability

myInstance?.printMyProperty() // This line will crash because myInstance is nil