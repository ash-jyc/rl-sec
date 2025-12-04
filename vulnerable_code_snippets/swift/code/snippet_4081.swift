class MyClass {
    var closure: (() -> Void)?
    deinit {
        print("MyClass deinitialized")
    }
}

var instance: MyClass? = MyClass()
instance?.closure = { [weak instance] in
    guard let instance = instance else { return }
    // Do something with instance
}

// Now, instance is leaked because the closure holds a strong reference cycle
instance = nil