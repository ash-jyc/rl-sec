class MyClass {
    var myString: String?
    
    init(str: String) {
        self.myString = str
    }
    
    func printMyString() {
        print(self.myString!)
    }
}

var myInstance: MyClass? = MyClass(str: "Hello, World")
myInstance?.printMyString()
myInstance = nil
myInstance?.printMyString()