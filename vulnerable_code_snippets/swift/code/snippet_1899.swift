class MyClass {
    var closure: (() -> Void)?
    
    init() {
        self.closure = { [weak self] in
            // Do something with self
        }
    }
    
    deinit {
        print("MyClass is being deinitialized")
    }
}

var instance: MyClass? = MyClass()
instance = nil