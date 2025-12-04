class MyClass {
    var myString: String?
    
    init(str: String) {
        self.myString = str
    }
    
    func printMyString() {
        guard let myString = myString else { return }
        print(myString)
    }
}

var instance: MyClass? = MyClass(str: "Hello, World")
instance = nil
instance?.printMyString()