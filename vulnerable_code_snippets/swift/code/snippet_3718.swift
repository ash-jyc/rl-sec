class FirstClass {
    var secondClassInstance: SecondClass?
    
    func setSecondClassInstance(secondClassInstance: SecondClass) {
        self.secondClassInstance = secondClassInstance
    }
}

class SecondClass {
    var firstClassInstance: FirstClass?
    
    init(firstClassInstance: FirstClass) {
        self.firstClassInstance = firstClassInstance
    }
}

var firstClassInstance = FirstClass()
var secondClassInstance = SecondClass(firstClassInstance: firstClassInstance)
firstClassInstance.setSecondClassInstance(secondClassInstance: secondClassInstance)

// This will create a circular reference between the two instances of FirstClass and SecondClass
// As a result, neither of these instances can be deallocated, causing a memory leak