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

var myInstance: MyClass? = MyClass()
myInstance?.closure?() // This will print "Doing something..."

myInstance = nil // This will cause a memory leak because of the strong reference cycle