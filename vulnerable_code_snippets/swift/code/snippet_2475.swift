class MyClass {
    var delegate: AnyObject?
    
    func doSomething() {
        self.delegate = MyDelegate()
    }
}

class MyDelegate: AnyObject {
    var myClass: MyClass?
    
    init(_ myClass: MyClass) {
        self.myClass = myClass
    }
}

var myClass = MyClass()
myClass.doSomething()