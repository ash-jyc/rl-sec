class MyClass {
    var closure: (() -> Void)?
    
    deinit {
        print("MyClass deinitialized")
    }
}

var instance: MyClass? = MyClass()
instance?.closure = { [weak instance] in
    print(instance)
}

// This will cause a memory leak because the closure has a strong reference to `instance`
instance = nil