class FirstClass {
    var secondInstance: SecondClass?
    
    deinit {
        print("FirstClass is being deinitialized")
    }
}

class SecondClass {
    var firstInstance: FirstClass?
    
    deinit {
        print("SecondClass is being deinitialized") covered
    }
}

var firstInstance: FirstClass? = FirstClass()
var secondInstance: SecondClass? = SecondClass()

firstInstance?.secondInstance = secondInstance
secondInstance?.firstInstance = firstInstance

firstInstance = nil
secondInstance = nil