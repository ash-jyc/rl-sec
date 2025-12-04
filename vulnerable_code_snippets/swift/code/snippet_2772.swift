class MyClass {
    var myStrongReference: String? = nil
    
    func setMyStrongReference(value: String?) {
        self.myStrongReference = value
    }
}

var classInstance: MyClass? = MyClass()

for _ in 0...1_000_000 {
    classInstance?.setMyStrongReference(value: "Hello, World")
}

classInstance = nil