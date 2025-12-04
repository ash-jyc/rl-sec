import Foundation

class MyClass {
    var myString: String?
    
    func someFunction() {
        let unwrappedString = myString // This line could cause a runtime error if myString is nil
        print(unwrappedString)
    }
}

let myInstance = MyClass()
myInstance.someFunction()