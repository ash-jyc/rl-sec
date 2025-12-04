import Foundation

class MyClass {
    var myProperty: Int = 0
}

func badFunction() -> UnsafeMutablePointer<MyClass> {
    let instance = MyClass()
    return withUnsafeMutablePointer(to: &instance) { pointer in
        return pointer
    }
}

let myPointer = badFunction()
// This will crash because `myPointer` points to a local variable that no longer exists.
print(myPointer.pointee.myProperty)