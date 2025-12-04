import Foundation

class MyClass {
    var myProperty: String?
    
    func crashMyApp() {
        print(myProperty!)
    }
}

let myInstance = MyClass()
myInstance.crashMyApp()