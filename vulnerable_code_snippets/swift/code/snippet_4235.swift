import Foundation

class MyClass {
    var myString: String?
    
    init(str: String) {
        self.myString = str
    }
    
    func printMyString() {
        print(myString!)
    }
}

var instance: MyClass? = MyClass(str: "Hello, World")
instance?.printMyString()
instance = nil
instance?.printMyString()