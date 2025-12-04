class MyClass {
    var myString: String?
    
    init(myString: String?) {
        self.myString = myString
    }
    
    func printMyString() {
        print(myString!)
    }
}

var object: MyClass? = MyClass(myString: "Hello, World")
object?.printMyString()
object = nil
object?.printMyString()