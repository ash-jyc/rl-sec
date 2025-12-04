class Dog {
    var name: String
    var owner: Owner?
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("\(name) is being deinitialized")
    }
}

class Owner {
    var name: String
    var dog: Dog?
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("\(name) is being deinitialized")
    }
}

var john: Owner? = Owner(name: "John")
var fido: Dog? = Dog(name: "Fido")

john?.dog = fido
fido?.owner = john

john = nil
fido = nil