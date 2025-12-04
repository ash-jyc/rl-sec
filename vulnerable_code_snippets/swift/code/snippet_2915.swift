import Foundation

class Animal {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Dog: Animal {
    var barkVolume: Int
    init(name: String, barkVolume: Int) {
        self.barkVolume = barkVolume
        super.init(name: name)
    }
}

let myDog = Dog(name: "Fido", barkVolume: 10)

// This will crash because we're trying to cast an Animal to a Dog
let myAnimal = unsafeBitCast(myDog, to: Animal.self)
print(myAnimal.name) // This will throw an error because the Dog's barkVolume doesn't exist on an Animal