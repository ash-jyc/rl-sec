enum PetType {
    case dog(Dog)
    case cat(Cat)
}

class Dog {
    func bark() -> String {
        return "Woof!"
    }
}

class Cat {
    func meow() -> String {
        return "Meow!"
    }
}

func petGreeter(_ pet: PetType?) -> String {
    switch pet {
    case .dog(let dog):
        return dog.bark()
    case .cat(let cat):
        return cat.meow()
    default:
        return "What kind of pet is this?"
    }
}

print(petGreeter(.dog(Dog()))) // prints "Woof!"
print(petGreeter(.cat(Cat()))) // prints "Meow!"
print(petGreeter(nil)) // prints "What kind of pet is this?"