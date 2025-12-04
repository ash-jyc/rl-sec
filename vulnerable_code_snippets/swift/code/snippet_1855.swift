import Foundation

class MyClass {
    var myProperty: String?
    
    init(property: String?) {
        self.myProperty = property
    }
    
    deinit {
        print("MyClass is being deinitialized")
    }
}

var strongReference: MyClass? = MyClass(property: "A strong reference")
weak var weakReference: MyClass? = MyClass(property: "A weak reference")

for _ in 0..<1_000_000 {
    let autoreleasedObject = MyClass(property: "An autoreleased object")
}

// The code above creates a strong reference to an instance of MyClass, a weak reference to another instance of MyClass, and then creates a large number of instances of MyClass that are immediately deallocated due to ARC.

// However, because the weakReference is weak, it does not keep the other instance from being deallocated, leading to a memory leak.