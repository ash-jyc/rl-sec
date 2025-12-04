class MyClass {
    var myVariable: String?
    
    init() {
        self.myVariable = "Hello, World!"
    }
    
    func printMyVariable() {
        print(self.myVariable ?? "")
    }
}

var weakReference: MyClass?

func createAndPrintVariable() {
    let instance = MyClass()
    weakReference = instance
    instance.printMyVariable()
}

createAndPrintVariable()
weakReference?.printMyVariable()