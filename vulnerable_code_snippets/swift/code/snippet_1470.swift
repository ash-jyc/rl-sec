import Foundation

class Animal {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class Dog: Animal {
    var barkSound: String
    
    init(name: String, barkSound: String) {
        self.barkSound = barkSound
        super.init(name: name)
    }
    
    func bark() -> String {
        return "Woof!"
    }
}

let animal = Animal(name: "Generic Animal")
let dog = Dog(name: "Fido", barkSound: "Woof")

// Vulnerable code: trying to cast 'animal' as a 'Dog'
if let dog = animal as? Dog {
    print("\(dog.name): \(dog.bark())")  // This will crash because 'animal' is not a 'Dog'
}