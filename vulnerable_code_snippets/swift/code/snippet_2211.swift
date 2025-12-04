class MyClass {
    var closure: (() -> Void)?
    
    func doSomething() {
        self.closure = { [weak self] in
            // Do something with self
        }
    }
}

let myInstance = MyClass()
myInstance.doSomething()