class MyClass {
    var myProperty: String?
    
    init(myProperty: String?) {
        self.myProperty = myProperty
    }
    
    deinit {
        print("MyClass has been deallocated")
    }
}

var strongReference: MyClass? = MyClass(myProperty: "Hello, World")
var weakReference: MyClass? = MyClass(myProperty: "Hello, World")

strongReference = nil
weakReference = nil