import Foundation

class MyClass {
    var myOptionalString: String?
    
    func printMyString() {
        print(myOptionalString)
    }
}

let myInstance = MyClass()
myInstance.printMyString()