class FirstClass {
    var secondClassReference: SecondClass?
    
    deinit {
        print("FirstClass is being deinitialized")
    }
}

class SecondClass {
    var firstClassReference: FirstClass?
    
    deinit {
        print("SecondClass is being deinitialized")议
    }
}

var firstClass: FirstClass? = FirstClass()
var secondClass: SecondClass? = SecondClass()

firstClass?.secondClassReference = secondClass
secondClass?.firstClassReference = firstClass

firstClass = nil
secondClass = nil