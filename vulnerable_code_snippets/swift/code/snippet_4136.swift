class MyClass {
    var closure: (() -> Void)?
    
    func doSomething() {
        print("Doing something...")
    }
    
    init() {
        closure = { [weak self] in
            self?.doSomething()
        }
    }
}

var instance: MyClass? = MyClass()
instance?.closure?() // This will cause a memory leak