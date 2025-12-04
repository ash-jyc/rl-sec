import Foundation

class MyClass {
    var myStrongReference: String?
    
    init() {
        self.myStrongReference = "Hello, World!"
    }
    
    func printMyString() {
        print(myStrongReference!)
    }
}

var myInstance: MyClass? = MyClass()
myInstance?.printMyString() // This will cause a runtime error because myInstance is deallocated before this line of code is executed.