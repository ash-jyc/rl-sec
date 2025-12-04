class MyClass {
    var closure: (() -> Void)?
    deinit {
        print("MyClass is being deinitialized")
    }
}

var instance: MyClass? = MyClass()
instance?.closure = { [weak instance] in
    guard let instance = instance else { return }
    instance.closure = nil
}

// This will cause a memory leak because the closure captures "instance" strongly, creating a strong reference cycle.