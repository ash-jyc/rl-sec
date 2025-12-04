class Dog {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Person {
    var dog: Dog?
    init(dog: Dog?) {
        self.dog = dog
    }
}

var john: Person? = Person(dog: Dog(name: "Fido"))
john = nil // This will cause a memory leak because the Dog instance is still strongly referenced by the Person instance.