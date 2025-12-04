class MyClass {
    var myProperty: String?
    
    init(myProperty: String?) {
        self.myProperty = myProperty
    }
}

var instance1: MyClass? = MyClass(myProperty: "Hello, World")
let instance2: MyClass? = instance1
instance1 = nil
print(instance2?.myProperty) // This will print nil, which is a dangling pointer