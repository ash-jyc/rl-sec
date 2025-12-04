class MyClass {
    var myVariable: String?
    
    func setValue(value: String) {
        self.myVariable = value
    }
    
    func printValue() {
        print(self.myVariable!)
    }
}

var myObject: MyClass? = MyClass()
myObject?.setValue(value: "Hello, World")
myObject = nil
myObject?.printValue()