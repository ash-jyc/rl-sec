class ClassA {
    var propertyB: ClassB?
    
    init() { }
    
    func someFunction() {
        self.propertyB = ClassB(propertyA: self)
    }
    
    deinit {
        print("ClassA deinitialized")
    }
}

class ClassB {
    var propertyA: ClassA?
    
    init(propertyA: ClassA) {
        self.propertyA = propertyA
    }
    
    deinit {
        print("ClassB deinitialized")
    }
}

var instanceA: ClassA? = ClassA()
instanceA?.someFunction()
instanceA = nil