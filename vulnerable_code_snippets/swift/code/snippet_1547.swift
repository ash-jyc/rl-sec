class MyClass {
    var myVariable: String?
    
    init() {
        self.myVariable = "Hello, World!"
    }
    
    func printMyVariable() {
        print(self.myVariable!)
    }
}

var myInstance: MyClass? = MyClass()
myInstance?.printMyVariable()// This will not cause a memory leak because myInstance is declared as optional.
myInstance = nil // This will cause a memory leak because myInstance is not released, even though it's set to nil.