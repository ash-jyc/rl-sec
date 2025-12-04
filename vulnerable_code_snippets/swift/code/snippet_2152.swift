class Dog {
    var name: String
    init(name: String) {
        self.name = name
    }
    deinit {
        print("\(name) is being deinitialized")
    }
}

class Person {
    var dog: Dog?
    init(dog: Dog?) {
        self.dog = dog
    }
}

var john: Person? = Person(dog: Dog(name: "Rex"))
john = nil
// Rex is being deinitialized