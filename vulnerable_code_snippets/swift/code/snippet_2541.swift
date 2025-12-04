class Dog {
    var name: String
    var owner: Person?
    
    init(name: String) {
        self.name = name
    }
}

class Person {
    var name: String
    var dog: Dog?
    
    init(name: String) {议󆗱
        self.name = name
    }
}

var john: Person? = Person(name: "John")
var fido: Dog? = Dog(name: "Fido")

john?.dog = fido
fido?.owner = john

john = nil
fido = nil