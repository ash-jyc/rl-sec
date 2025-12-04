class MyClass {
    var myStrongReference: MyOtherClass?
    
    init() {
        self.myStrongReference = MyOtherClass()
    }
    
    func doSomething() {
        // Do something with myStrongReference
    }
}

class MyOtherClass {
    var data: [Int] = []
    
    init() {
        for _ in 0..<1_000_000 {
            self.data.append(Int.random(in: 0...100))
        }
    }
}

var myInstance: MyClass? = MyClass()
myInstance?.doSomething()
myInstance = nil