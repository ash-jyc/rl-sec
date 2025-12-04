class MyClass {
    var closure: (() -> Void)?
    
    func setClosure() {
        self.closure = { [weak self] in
            print("Hello, World from MyClass")
        }
    }
}

var myClassInstance: MyClass? = MyClass()
myClassInstance?.setClosure()

// This will cause a memory leak because the closure holds a strong reference to `self`
myClassInstance = nil