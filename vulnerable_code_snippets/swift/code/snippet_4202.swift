class ClassA {
    var refToClassB: ClassB?
    
    init() { }
    
    func setReferenceToClassB(classB: ClassB) {
        self.refToClassB = classB
    }
}

class ClassB {
    var refToClassA: ClassA?
    
    init() { }
    
    func setReferenceToClassA(classA: ClassA) {
        self.refToClassA = classA
    }
}

var instanceOfClassA = ClassA()
var instanceOfClassB = ClassB()

instanceOfClassA.setReferenceToClassB(classB: instanceOfClassB)
instanceOfClassB.setReferenceToClassA(classA: instanceOfClassA)

// This creates a strong reference cycle between the two instances of ClassA and ClassB. 
// If these instances are deallocated, they will not be deallocated because of the strong reference cycle.