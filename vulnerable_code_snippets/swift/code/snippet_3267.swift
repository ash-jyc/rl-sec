import Foundation

class MyClass {
    var myProperty: String?
    
    deinit {
        print("MyClass is being deinitialized")
    }
}

var instance1: MyClass? = MyClass()
instance1?.myProperty = "Hello, World!"

// Double freeing the memory
instance1 = nil
instance1 = nil // This line will cause a crash

print("End of program")